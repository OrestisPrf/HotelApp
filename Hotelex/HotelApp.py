from tkinter import *
from tkinter import messagebox
import mysql.connector
from tkinter import ttk


# Opens customer window --------------------------------------------------------------------------
def open_cus():
    top = Toplevel(root)
    top.title("Customer")
    top.iconbitmap("hotel.ico")
    top.geometry("840x590")

    # Starting CRUD operations
    # adding new customer
    def submit():
        conn = db_connect()
        c = conn.cursor()
        # Insert data into database
        c.execute("INSERT INTO customers VALUES (%s, %s, %s, %s, %s)",
                  (cus_id.get(), cus_name.get(), cus_lname.get(), cus_gender.get(), cus_phone.get()))
        # Commit changes and close connection
        conn.commit()
        conn.close()
        # Clear the input fields
        clear_entries()
        # Show success message
        update_status("Record added successfully", "green")

    # Clear input fields
    def clear_entries():
        cus_id.delete(0, END)
        cus_name.delete(0, END)
        cus_lname.delete(0, END)
        cus_gender.delete(0, END)
        cus_phone.delete(0, END)

    # function to show updated status message
    def update_status(message, color):
        status_label.config(text=message, fg=color)

    def delete():
        conn = db_connect()
        c = conn.cursor()
        # Delete record
        c.execute("DELETE FROM customers WHERE cus_id=%s", (delete_box.get(),))
        # Commit changes and close connection
        conn.commit()
        conn.close()
        # Clear the delete box
        delete_box.delete(0, END)
        # Show success message
        update_status("Record deleted successfully", "green")

    def show_records():
        conn = db_connect()
        if conn:
            c = conn.cursor()
            # Retrieve records from database
            c.execute("SELECT * FROM customers")
            records = c.fetchall()
            # Display records in the GUI
            print(records)  # Print fetched records
            record_display.delete(0.1, END)
            for record in records:
                record_display.insert(END, f"{record}\n")

            conn.close()
        else:
            messagebox.showerror("Database Error", "Failed to connect to the database.")

    def update():
        conn = db_connect()
        c = conn.cursor()
        # Update record
        c.execute("""
            UPDATE customers SET
            cus_name = %s,
            cus_lname = %s,
            cus_gender = %s,
            cus_phone = %s
            WHERE cus_id = %s
            """, (cus_name_update.get(), cus_lname_update.get(), cus_gender_update.get(), cus_phone_update.get(),
                  cus_id_update.get()))

        conn.commit()
        conn.close()
        # Clear update fields
        clear_update_fields()
        # Show success message
        update_status("Record updated successfully", "green")

    # Clear update fields after input of the user
    def clear_update_fields():
        cus_id_update.delete(0, END)
        cus_name_update.delete(0, END)
        cus_lname_update.delete(0, END)
        cus_gender_update.delete(0, END)
        cus_phone_update.delete(0, END)

    # Label Frame for entry fields
    entry_frame = LabelFrame(top, text="Add New Customer", fg="blue")
    entry_frame.grid(row=0, column=0, padx=10, pady=10, sticky="nsew")

    # Entry fields
    cus_id = Entry(entry_frame, width=30)
    cus_id.grid(row=0, column=1, padx=10, pady=5)
    cus_name = Entry(entry_frame, width=30)
    cus_name.grid(row=1, column=1, padx=10, pady=5)
    cus_lname = Entry(entry_frame, width=30)
    cus_lname.grid(row=2, column=1, padx=10, pady=5)
    cus_gender = Entry(entry_frame, width=30)
    cus_gender.grid(row=3, column=1, padx=10, pady=5)
    cus_phone = Entry(entry_frame, width=30)
    cus_phone.grid(row=4, column=1, padx=10, pady=5)

    # Labels for entry fields
    Label(entry_frame, text="ID:").grid(row=0, column=0, pady=5)
    Label(entry_frame, text="First Name:").grid(row=1, column=0, pady=5)
    Label(entry_frame, text="Last Name:").grid(row=2, column=0, pady=5)
    Label(entry_frame, text="Gender:").grid(row=3, column=0, pady=5)
    Label(entry_frame, text="Phone:").grid(row=4, column=0, pady=5)

    # Submit button
    submit_btn = Button(entry_frame, text="Add Customer", command=submit)
    submit_btn.grid(row=6, column=0, columnspan=2, pady=5)

    # Label Frame for record display
    record_frame = LabelFrame(top, text="Records", fg="blue")
    record_frame.grid(row=0, column=1, padx=10, pady=10, sticky="nsew")

    # Text area for displaying records
    record_display = Text(record_frame, width=40, height=10)
    record_display.grid(row=0, column=0, padx=10, pady=5, sticky="nsew")

    # Scrollbar for record display
    scrollbar = Scrollbar(record_frame, orient=VERTICAL, command=record_display.yview)
    # the scrollbar will control the vertical scrolling of the record_display widget.
    scrollbar.grid(row=0, column=1, sticky="nse")
    # the record_display widget will synchronize its vertical scrolling with the movement of the scrollbar.
    record_display.config(yscrollcommand=scrollbar.set)

    # Button to show records
    show_records_btn = Button(record_frame, text="Show Records", command=show_records)
    show_records_btn.grid(row=1, column=0, columnspan=2, pady=5)

    # Label Frame for updating records
    update_frame = LabelFrame(top, text="Update Record", fg="blue")
    update_frame.grid(row=1, column=0, padx=10, pady=10, sticky="nsew")

    # Entry fields for updating records
    cus_id_update = Entry(update_frame, width=30)
    cus_id_update.grid(row=0, column=1, padx=10, pady=5)
    cus_name_update = Entry(update_frame, width=30)
    cus_name_update.grid(row=1, column=1, padx=10, pady=5)
    cus_lname_update = Entry(update_frame, width=30)
    cus_lname_update.grid(row=2, column=1, padx=10, pady=5)
    cus_gender_update = Entry(update_frame, width=30)
    cus_gender_update.grid(row=3, column=1, padx=10, pady=5)
    cus_phone_update = Entry(update_frame, width=30)
    cus_phone_update.grid(row=4, column=1, padx=10, pady=5)

    # Labels for updating records
    Label(update_frame, text="ID:").grid(row=0, column=0, pady=5)
    Label(update_frame, text="First Name:").grid(row=1, column=0, pady=5)
    Label(update_frame, text="Last Name:").grid(row=2, column=0, pady=5)
    Label(update_frame, text="Gender:").grid(row=3, column=0, pady=5)
    Label(update_frame, text="Phone:").grid(row=4, column=0, pady=5)

    # Button to update record
    update_btn = Button(update_frame, text="Update Record", command=update)
    update_btn.grid(row=7, column=0, columnspan=2, pady=5)

    # Delete Record
    delete_frame = LabelFrame(top, text="Delete Record", fg="blue")
    delete_frame.grid(row=1, column=1, padx=10, pady=10, sticky="nsew")

    delete_box = Entry(delete_frame, width=30)
    delete_box.grid(row=0, column=3, padx=10, pady=5)

    delete_btn = Button(delete_frame, text="Delete Record(ID)", command=delete)
    delete_btn.grid(row=1, column=2, columnspan=2, pady=5)
    # Disable the button if the user type is regular
    if user_type == "user":
        delete_btn.config(state=DISABLED)
    # Status label
    status_label = Label(top, text="", fg="green")
    status_label.grid(row=2, column=0, columnspan=2)


# Opens employee Window -------------------------------------------------------------
def open_emp():
    top = Toplevel(root)
    top.title("Employees")
    top.iconbitmap("hotel.ico")  # inserting icon
    top.geometry("850x720")

    # Starting CRUD operations
    # function to add new room
    def submit():
        conn = db_connect()  # Connecting to database
        if not conn:
            return messagebox.showerror("Database Error", "Failed to connect to the database.")
        c = conn.cursor()
        # Executing the query
        c.execute("INSERT INTO employee VALUES (%s, %s, %s, %s, %s, %s, %s)",
                  (emp_id.get(), emp_name.get(), emp_lname.get(), fathers_name.get(),
                   emp_gender.get(), emp_phone.get(), emp_address.get()))
        # commit changes and close connection
        conn.commit()
        conn.close()
        # calling function to clear entries
        clear_entries()
        update_status("Record added successfully", "green")

    # clearing entries  in the  labels
    def clear_entries():
        emp_id.delete(0, END)
        emp_name.delete(0, END)
        emp_lname.delete(0, END)
        fathers_name.delete(0, END)
        emp_gender.delete(0, END)
        emp_phone.delete(0, END)
        emp_address.delete(0, END)

    # show update status  message
    def update_status(message, color):
        status_label.config(text=message, fg=color)

    # function to delete a room
    def delete():
        conn = db_connect()
        if not conn:
            return messagebox.showerror("Database Error", "Failed to connect to the database.")
        c = conn.cursor()
        # query to delete
        c.execute("DELETE FROM employee WHERE emp_id=%s", (delete_box.get(),))
        conn.commit()
        conn.close()
        delete_box.delete(0, END)
        update_status("Record deleted successful", "green")

    # Display database
    def show_records():
        # connecting to database
        conn = db_connect()
        if not conn:
            return messagebox.showerror("Database Error", "Failed to connect to the database.")
        c = conn.cursor()
        c.execute("SELECT * FROM employee")
        # retrieve  all records from room table
        records = c.fetchall()
        # clearing any record displayed
        record_display.delete(1.0, END)
        for record in records:
            record_display.insert(END, f"{record}\n")
        conn.close()

    # update database
    def update():
        conn = db_connect()
        if not conn:
            return messagebox.showerror("Database Error", "Failed to connect to the database.")
        c = conn.cursor()
        # query to update info
        c.execute("""
                     UPDATE employee SET
                     emp_name = %s,
                     emp_lname = %s
                     fathers_name = %s
                     emp_gender = %s
                     emp_phone = %s
                     emp_address = %s
                     WHERE emp_id = %s
                     """, (emp_name_update.get(), emp_lname_update.get(), fathers_name_update.get(),
                           emp_gender_update.get(), emp_phone_update.get(), emp_address_update.get(),
                           emp_id_update.get()))

        conn.commit()
        conn.close()
        clear_update_fields()
        update_status("Record updated successfully", "green")

    def clear_update_fields():
        emp_id_update.delete(0, END)
        emp_name_update.delete(0, END)
        emp_lname_update.delete(0, END)
        fathers_name_update.delete(0, END)
        emp_gender_update.delete(0, END)
        emp_phone_update.delete(0, END)
        emp_address_update.delete(0, END)
    # creating a frame
    entry_frame = LabelFrame(top, text="Add an Employee", fg="blue")
    entry_frame.grid(row=0, column=0, padx=10, pady=10, sticky="nsew")
    # creating entries
    emp_id = Entry(entry_frame, width=30)
    emp_id.grid(row=0, column=1, padx=10, pady=5)
    emp_name = Entry(entry_frame, width=30)
    emp_name.grid(row=1, column=1, padx=10, pady=5)
    emp_lname = Entry(entry_frame, width=30)
    emp_lname.grid(row=2, column=1, padx=10, pady=5)
    fathers_name = Entry(entry_frame, width=30)
    fathers_name.grid(row=3, column=1, padx=10, pady=5)
    emp_gender = Entry(entry_frame, width=30)
    emp_gender.grid(row=4, column=1, padx=10, pady=5)
    emp_phone = Entry(entry_frame, width=30)
    emp_phone.grid(row=5, column=1, padx=10, pady=5)
    emp_address = Entry(entry_frame, width=30)
    emp_address.grid(row=6, column=1, padx=10, pady=5)

    Label(entry_frame, text="ID:").grid(row=0, column=0, pady=5)
    Label(entry_frame, text="Name:").grid(row=1, column=0, pady=5)
    Label(entry_frame, text="Surname:").grid(row=2, column=0, pady=5)
    Label(entry_frame, text="Fathers Name:").grid(row=3, column=0, pady=5)
    Label(entry_frame, text="Gender:").grid(row=4, column=0, pady=5)
    Label(entry_frame, text="Phone:").grid(row=5, column=0, pady=5)
    Label(entry_frame, text="Address:").grid(row=6, column=0, pady=5)

    submit_btn = Button(entry_frame, text="Add Employee", command=submit)
    submit_btn.grid(row=7, column=0, columnspan=2, pady=5)
    # Disable the button if the user type is regular
    if user_type == "user":
        submit_btn.config(state=DISABLED)

    record_frame = LabelFrame(top, text="Employees", fg="blue")
    record_frame.grid(row=0, column=1, padx=10, pady=10, sticky="nsew")

    record_display = Text(record_frame, width=40, height=10)
    record_display.grid(row=0, column=0, padx=10, pady=5, sticky="nsew")

    scrollbar = Scrollbar(record_frame, orient=VERTICAL, command=record_display.yview)
    scrollbar.grid(row=0, column=1, sticky="nse")
    record_display.config(yscrollcommand=scrollbar.set)

    show_records_btn = Button(record_frame, text="Show Employees", command=show_records)
    show_records_btn.grid(row=1, column=0, columnspan=2, pady=5)

    update_frame = LabelFrame(top, text="Change Info", fg="blue")
    update_frame.grid(row=1, column=0, padx=10, pady=10, sticky="nsew")

    emp_id_update = Entry(update_frame, width=30)
    emp_id_update.grid(row=0, column=1, padx=10, pady=5)
    emp_name_update = Entry(update_frame, width=30)
    emp_name_update.grid(row=1, column=1, padx=10, pady=5)
    emp_lname_update = Entry(update_frame, width=30)
    emp_lname_update.grid(row=2, column=1, padx=10, pady=5)
    fathers_name_update = Entry(update_frame, width=30)
    fathers_name_update.grid(row=3, column=1, padx=10, pady=5)
    emp_gender_update = Entry(update_frame, width=30)
    emp_gender_update.grid(row=4, column=1, padx=10, pady=5)
    emp_phone_update = Entry(update_frame, width=30)
    emp_phone_update.grid(row=5, column=1, padx=10, pady=5)
    emp_address_update = Entry(update_frame, width=30)
    emp_address_update.grid(row=6, column=1, padx=10, pady=5)

    Label(update_frame, text="ID:").grid(row=0, column=0, pady=5)
    Label(update_frame, text="Name:").grid(row=1, column=0, pady=5)
    Label(update_frame, text="Surname:").grid(row=2, column=0, pady=5)
    Label(update_frame, text="Fathers Name:").grid(row=3, column=0, pady=5)
    Label(update_frame, text="Gender:").grid(row=4, column=0, pady=5)
    Label(update_frame, text="Phone:").grid(row=5, column=0, pady=5)
    Label(update_frame, text="Address:").grid(row=6, column=0, pady=5)

    update_btn = Button(update_frame, text="Change Info", command=update)
    update_btn.grid(row=7, column=0, columnspan=2, pady=5)

    delete_frame = LabelFrame(top, text="Delete Employee", fg="blue")
    delete_frame.grid(row=1, column=1, padx=10, pady=10, sticky="nsew")

    delete_box = Entry(delete_frame, width=30)
    delete_box.grid(row=0, column=1, padx=10, pady=5)

    delete_btn = Button(delete_frame, text="Delete Employee(ID)", command=delete)
    delete_btn.grid(row=1, column=0, columnspan=2, pady=5)
    # Disable the button if the user type is regular
    if user_type == "user":
        delete_btn.config(state=DISABLED)
    status_label = Label(top, text="", fg="green")
    status_label.grid(row=2, column=0, columnspan=2)


# Opens Order Window ----------------------------------------------------------------
def open_order():
    top = Toplevel(root)
    top.title("Orders")
    top.iconbitmap("hotel.ico")
    top.geometry("810x520")

    # Starting CRUD operations
    # function to add new room
    def submit():
        conn = db_connect()
        if not conn:
            return messagebox.showerror("Database Error", "Failed to connect to the database.")
        c = conn.cursor()

        c.execute("INSERT INTO restaurant VALUES (%s, %s, %s)",
                (order_id.get(), foods.get(), drinks.get()))
        # commit changes and close connection
        conn.commit()
        conn.close()
        # calling function to clear entries
        clear_entries()
        update_status("Record added successfully", "green")

    # clearing entries  in the  labels
    def clear_entries():
        order_id.delete(0, END)
        foods.delete(0, END)
        drinks.delete(0, END)

    # show update status  message
    def update_status(message, color):
        status_label.config(text=message, fg=color)

    # function to delete a room
    def delete():
        conn = db_connect()
        if not conn:
            return messagebox.showerror("Database Error", "Failed to connect to the database.")
        c = conn.cursor()
        # query to delete
        c.execute("DELETE FROM restaurant WHERE order_id=%s", (delete_box.get(),))
        conn.commit()
        conn.close()
        delete_box.delete(0, END)
        update_status("Record deleted successful", "green")

    def show_records():
        # connecting to database
        conn = db_connect()
        if not conn:
            return messagebox.showerror("Database Error", "Failed to connect to the database.")
        c = conn.cursor()
        c.execute("SELECT * FROM restaurant")
        # retrieve  all records from room table
        records = c.fetchall()
        # clearing any record displayed
        record_display.delete(1.0, END)
        for record in records:
            record_display.insert(END, f"Order ID: {record[0]}, Food: {record[1]}, Drink: {record[2]}\n")
        conn.close()

    # function to update a room
    def update():
        conn = db_connect()
        if not conn:
            return messagebox.showerror("Database Error", "Failed to connect to the database.")
        c = conn.cursor()

        c.execute("""
                  UPDATE restaurant SET
                  foods = %s,
                  drinks = %s
                  WHERE order_id = %s
                  """, (foods_update.get(), drinks_update.get(), order_id_update.get()))
        conn.commit()
        conn.close()
        clear_update_fields()
        update_status("Record updated successfully", "green")

    def clear_update_fields():
        order_id_update.delete(0, END)
        foods_update.delete(0, END)
        drinks_update.delete(0, END)

    entry_frame = LabelFrame(top, text="Make an Order", fg="blue")
    entry_frame.grid(row=0, column=0, padx=10, pady=10, sticky="nsew")

    order_id = Entry(entry_frame, width=30)
    order_id.grid(row=0, column=1, padx=10, pady=5)
    food_choices = ["carbonara", "pizza", "rib-eye", "pie", "gyros"]  # Making User choose from the menu
    foods = ttk.Combobox(entry_frame, values=food_choices, width=27)  # using ttk library
    foods.grid(row=1, column=1, padx=10, pady=5)
    foods.set("Choose Food")
    drink_choices = ["mohito", "zombie", "wine", "beer", "cocacola", "orange juice"]
    drinks = ttk.Combobox(entry_frame, values=drink_choices, width=27)
    drinks.grid(row=2, column=1, padx=10, pady=5)
    drinks.set("Choose Drink")
    Label(entry_frame, text="Order:").grid(row=0, column=0, pady=5)
    Label(entry_frame, text="Food:").grid(row=1, column=0, pady=5)
    Label(entry_frame, text="Drink:").grid(row=2, column=0, pady=5)

    submit_btn = Button(entry_frame, text="Make the Order", command=submit)
    submit_btn.grid(row=3, column=0, columnspan=2, pady=5)

    record_frame = LabelFrame(top, text="Orders", fg="blue")
    record_frame.grid(row=0, column=1, padx=10, pady=10, sticky="nsew")

    record_display = Text(record_frame, width=40, height=10)
    record_display.grid(row=0, column=0, padx=10, pady=5, sticky="nsew")

    scrollbar = Scrollbar(record_frame, orient=VERTICAL, command=record_display.yview)
    scrollbar.grid(row=0, column=1, sticky="nse")
    record_display.config(yscrollcommand=scrollbar.set)

    show_records_btn = Button(record_frame, text="Show Orders", command=show_records)
    show_records_btn.grid(row=1, column=0, columnspan=2, pady=5)

    update_frame = LabelFrame(top, text="Change Order", fg="blue")
    update_frame.grid(row=1, column=0, padx=10, pady=10, sticky="nsew")

    order_id_update = Entry(update_frame, width=30)
    order_id_update.grid(row=0, column=1, padx=10, pady=5)
    food_choices = ["carbonara", "pizza", "rib-eye", "pie", "gyros"]
    foods_update = ttk.Combobox(update_frame, values=food_choices, width=27)
    foods_update.grid(row=1, column=1, padx=10, pady=5)
    foods_update.set("Choose Food")

    drink_choices = ["mohito", "zombie", "wine", "beer", "cocacola", "orange juice"]
    drinks_update = ttk.Combobox(update_frame, values=drink_choices, width=27)
    drinks_update.grid(row=2, column=1, padx=10, pady=5)
    drinks_update.set("Choose Drink")

    Label(update_frame, text="Order:").grid(row=0, column=0, pady=5)
    Label(update_frame, text="Food:").grid(row=1, column=0, pady=5)
    Label(update_frame, text="Drink:").grid(row=2, column=0, pady=5)

    update_btn = Button(update_frame, text="Change Order", command=update)
    update_btn.grid(row=3, column=0, columnspan=2, pady=5)

    delete_frame = LabelFrame(top, text="Delete Order", fg="blue")
    delete_frame.grid(row=1, column=1, padx=10, pady=10, sticky="nsew")

    delete_box = Entry(delete_frame, width=30)
    delete_box.grid(row=0, column=1, padx=10, pady=5)

    delete_btn = Button(delete_frame, text="Delete Order(ID)", command=delete)
    delete_btn.grid(row=1, column=0, columnspan=2, pady=5)

    status_label = Label(top, text="", fg="green")
    status_label.grid(row=2, column=0, columnspan=2)


# Opens Booking window ----------------------------------------------------------------------
def open_book():
    top = Toplevel(root)
    top.title("Bookings")
    top.iconbitmap("hotel.ico")
    top.geometry("860x520")

    # Starting CRUD operations
    # function to add new room
    def submit():
        conn = db_connect()
        if not conn:
            return messagebox.showerror("Database Error", "Failed to connect to the database.")
        c = conn.cursor()

        c.execute("INSERT INTO booking VALUES (%s, %s, %s)",
                  (book_id.get(), check_in.get(), check_out.get()))
        # commit changes and close connection
        conn.commit()
        conn.close()
        # calling function to clear entries
        clear_entries()
        update_status("Record added successfully", "green")

    # clearing entries  in the  labels
    def clear_entries():
        book_id.delete(0, END)
        check_in.delete(0, END)
        check_out.delete(0, END)

    # show update status  message
    def update_status(message, color):
        status_label.config(text=message, fg=color)

    # function to delete a room
    def delete():
        conn = db_connect()
        if not conn:
            return messagebox.showerror("Database Error", "Failed to connect to the database.")
        c = conn.cursor()
        # query to delete
        c.execute("DELETE FROM booking WHERE book_id=%s", (delete_box.get(),))

        conn.commit()
        conn.close()

        delete_box.delete(0, END)

        update_status("Record deleted successful", "green")

        # function to reveal the data tha are inside the database

    def show_records():
        # connecting to database
        conn = db_connect()
        if not conn:
            return messagebox.showerror("Database Error", "Failed to connect to the database.")
        c = conn.cursor()
        c.execute("SELECT * FROM booking")
        # retrieve  all records from room table
        records = c.fetchall()
        # clearing any record displayed
        record_display.delete(1.0, END)
        for record in records:
            record_display.insert(END, f"Book ID: {record[0]}, Check in: {record[1]}, Check out: {record[2]}\n")

        conn.close()

    # function to update a room
    def update():
        conn = db_connect()
        if not conn:
            return messagebox.showerror("Database Error", "Failed to connect to the database.")
        c = conn.cursor()

        c.execute("""
                 UPDATE booking SET
                 check_in = %s,
                 check_out = %s
                 WHERE book_id = %s
                 """, (check_in_update.get(), check_out_update.get(), book_id_update.get()))

        conn.commit()
        conn.close()

        clear_update_fields()

        update_status("Record updated successfully", "green")

    def clear_update_fields():
        book_id_update.delete(0, END)
        check_in_update.delete(0, END)
        check_out_update.delete(0, END)

    entry_frame = LabelFrame(top, text="Make a Booking", fg="blue")
    entry_frame.grid(row=0, column=0, padx=10, pady=10, sticky="nsew")

    book_id = Entry(entry_frame, width=30)
    book_id.grid(row=0, column=1, padx=10, pady=5)
    check_in = Entry(entry_frame, width=30)
    check_in.grid(row=1, column=1, padx=10, pady=5)
    check_in.insert(0, "MM/DD/YY")  # placeholder
    check_out = Entry(entry_frame, width=30)
    check_out.grid(row=2, column=1, padx=10, pady=5)
    check_out.insert(0, "MM/DD/YY")  # placeholder

    Label(entry_frame, text="ID:").grid(row=0, column=0, pady=5)
    Label(entry_frame, text="Check in date:").grid(row=1, column=0, pady=5)
    Label(entry_frame, text="Check out date:").grid(row=2, column=0, pady=5)

    submit_btn = Button(entry_frame, text="Make Booking", command=submit)
    submit_btn.grid(row=3, column=0, columnspan=2, pady=5)

    record_frame = LabelFrame(top, text="Bookings", fg="blue")
    record_frame.grid(row=0, column=1, padx=10, pady=10, sticky="nsew")

    record_display = Text(record_frame, width=40, height=10)
    record_display.grid(row=0, column=0, padx=10, pady=5, sticky="nsew")

    scrollbar = Scrollbar(record_frame, orient=VERTICAL, command=record_display.yview)
    scrollbar.grid(row=0, column=1, sticky="nse")
    record_display.config(yscrollcommand=scrollbar.set)

    show_records_btn = Button(record_frame, text="Show Bookings", command=show_records)
    show_records_btn.grid(row=1, column=0, columnspan=2, pady=5)

    update_frame = LabelFrame(top, text="Update Booking", fg="blue")
    update_frame.grid(row=1, column=0, padx=10, pady=10, sticky="nsew")

    book_id_update = Entry(update_frame, width=30)
    book_id_update.grid(row=0, column=1, padx=10, pady=5)
    check_in_update = Entry(update_frame, width=30)
    check_in_update.grid(row=1, column=1, padx=10, pady=5)
    check_in_update.insert(0, "MM/DD/YY")
    check_out_update = Entry(update_frame, width=30)
    check_out_update.grid(row=2, column=1, padx=10, pady=5)
    check_out_update.insert(0, "MM/DD/YY")

    Label(update_frame, text="ID:").grid(row=0, column=0, pady=5)
    Label(update_frame, text="Check in date:").grid(row=1, column=0, pady=5)
    Label(update_frame, text="Check out date:").grid(row=2, column=0, pady=5)

    update_btn = Button(update_frame, text="Change Booking", command=update)
    update_btn.grid(row=3, column=0, columnspan=2, pady=5)

    delete_frame = LabelFrame(top, text="Delete Booking", fg="blue")
    delete_frame.grid(row=1, column=1, padx=10, pady=10, sticky="nsew")

    delete_box = Entry(delete_frame, width=30)
    delete_box.grid(row=0, column=1, padx=10, pady=5)

    delete_btn = Button(delete_frame, text="Delete Record(ID)", command=delete)
    delete_btn.grid(row=1, column=0, columnspan=2, pady=5)
    # Disable the button if the user type is regular
    if user_type == "user":
        delete_btn.config(state=DISABLED)
    status_label = Label(top, text="", fg="green")
    status_label.grid(row=2, column=0, columnspan=2)


# Opens room window -------------------------------------------------------------------------
def open_room():
    top = Toplevel(root)
    top.title("Room Management")
    top.iconbitmap("hotel.ico")
    top.geometry("840x520")

    # Starting CRUD operations
    # function to add new room
    def submit():
        conn = db_connect()
        if not conn:
            return messagebox.showerror("Database Error", "Failed to connect to the database.")
        c = conn.cursor()

        c.execute("INSERT INTO room VALUES (%s, %s, %s)",
                  (room_id.get(), bed_type_var.get(), room_type_var.get()))
        # commit changes and close connection
        conn.commit()
        conn.close()
        # calling function to clear entries
        clear_entries()
        update_status("Record added successfully", "green")

    # clearing entries  in the  labels
    def clear_entries():
        room_id.delete(0, END)
        bed_type_var.set("")  # Clear the selected value
        room_type_var.set("")  # Clear the selected value

    # show update status  message
    def update_status(message, color):
        status_label.config(text=message, fg=color)

    # function to delete a room
    def delete():
        conn = db_connect()
        if not conn:
            return messagebox.showerror("Database Error", "Failed to connect to the database.")
        c = conn.cursor()
        # query to delete
        c.execute("DELETE FROM room WHERE room_id=%s", (delete_box.get(),))

        conn.commit()
        conn.close()

        delete_box.delete(0, END)

        update_status("Record deleted successfully", "green")

    # function to reveal the data tha are inside the database
    def show_records():
        # connecting to database
        conn = db_connect()
        if not conn:
            return messagebox.showerror("Database Error", "Failed to connect to the database.")
        c = conn.cursor()
        c.execute("SELECT * FROM room")
        # retrieve  all records from room table
        records = c.fetchall()
        # clearing any record displayed
        record_display.delete(1.0, END)
        for record in records:
            record_display.insert(END, f"Room ID: {record[0]}, Bed Type: {record[1]}, Room Type: {record[2]}\n")

        conn.close()

    # function to update a room
    def update():
        conn = db_connect()
        if not conn:
            return messagebox.showerror("Database Error", "Failed to connect to the database.")
        c = conn.cursor()

        c.execute("""
               UPDATE room SET
               bed_type = %s,
               room_type = %s
               WHERE room_id = %s
               """, (bed_type_var_update.get(), room_type_var_update.get(), room_id_update.get()))

        conn.commit()
        conn.close()

        clear_update_fields()

        update_status("Record updated successfully", "green")

    def clear_update_fields():
        room_id_update.delete(0, END)
        bed_type_var_update.set("")  # Clear the selected value
        room_type_var_update.set("")  # Clear the selected value

    entry_frame = LabelFrame(top, text="Add New Room", fg="blue")
    entry_frame.grid(row=0, column=0, padx=10, pady=10, sticky="nsew")

    room_id = Entry(entry_frame, width=30)
    room_id.grid(row=0, column=1, padx=10, pady=5)
    bed_type_var = StringVar()  # Option menu , the user must select this specific choices
    bed_type_var.set("")  # Default value is empty
    bed_type_menu = OptionMenu(entry_frame, bed_type_var, "Double Room", "Triple Room")
    bed_type_menu.grid(row=1, column=1, padx=10, pady=5)
    room_type_var = StringVar()
    room_type_var.set("")  # Default value is empty
    room_type_menu = OptionMenu(entry_frame, room_type_var, "Standard", "VIP")
    room_type_menu.grid(row=2, column=1, padx=10, pady=5)

    Label(entry_frame, text="ID:").grid(row=0, column=0, pady=5)
    Label(entry_frame, text="Bed type:").grid(row=1, column=0, pady=5)
    Label(entry_frame, text="Room type:").grid(row=2, column=0, pady=5)

    submit_btn = Button(entry_frame, text="Add Room", command=submit)
    submit_btn.grid(row=3, column=0, columnspan=2, pady=5)
    # Disable the button if the user type is regular
    if user_type == "user":
        submit_btn.config(state=DISABLED)

    record_frame = LabelFrame(top, text="Rooms", fg="blue")
    record_frame.grid(row=0, column=1, padx=10, pady=10, sticky="nsew")

    record_display = Text(record_frame, width=40, height=10)
    record_display.grid(row=0, column=0, padx=10, pady=5, sticky="nsew")

    scrollbar = Scrollbar(record_frame, orient=VERTICAL, command=record_display.yview)
    scrollbar.grid(row=0, column=1, sticky="nse")
    record_display.config(yscrollcommand=scrollbar.set)

    show_records_btn = Button(record_frame, text="Show Rooms", command=show_records)
    show_records_btn.grid(row=1, column=0, columnspan=2, pady=5)

    update_frame = LabelFrame(top, text="Update Room", fg="blue")
    update_frame.grid(row=1, column=0, padx=10, pady=10, sticky="nsew")

    room_id_update = Entry(update_frame, width=30)
    room_id_update.grid(row=0, column=1, padx=10, pady=5)
    bed_type_var_update = StringVar()
    bed_type_var_update.set("")  # Default value is empty
    bed_type_menu_update = OptionMenu(update_frame, bed_type_var_update, "Double Room", "Triple Room")
    bed_type_menu_update.grid(row=1, column=1, padx=10, pady=5)
    room_type_var_update = StringVar()
    room_type_var_update.set("")  # Default value is empty
    room_type_menu_update = OptionMenu(update_frame, room_type_var_update, "Standard", "VIP")
    room_type_menu_update.grid(row=2, column=1, padx=10, pady=5)

    Label(update_frame, text="ID:").grid(row=0, column=0, pady=5)
    Label(update_frame, text="Bed type:").grid(row=1, column=0, pady=5)
    Label(update_frame, text="Room type:").grid(row=2, column=0, pady=5)

    update_btn = Button(update_frame, text="Update Record", command=update)
    update_btn.grid(row=3, column=0, columnspan=2, pady=5)

    delete_frame = LabelFrame(top, text="Delete Room", fg="blue")
    delete_frame.grid(row=1, column=1, padx=10, pady=10, sticky="nsew")

    delete_box = Entry(delete_frame, width=30)
    delete_box.grid(row=0, column=1, padx=10, pady=5)

    delete_btn = Button(delete_frame, text="Delete Record(ID)", command=delete)
    delete_btn.grid(row=1, column=0, columnspan=2, pady=5)
    # Disable the button if the user type is regular
    if user_type == "user":
        delete_btn.config(state=DISABLED)
    status_label = Label(top, text="", fg="green")
    status_label.grid(row=2, column=0, columnspan=2)


# connection to database (global function)
def db_connect():
    try:
        conn = mysql.connector.connect(**db_config)
        return conn
    except mysql.connector.Error as e:
        messagebox.showerror("Database Error", str(e))
        return None


# Window of regular user input
def regular_user_login():
    global user_type
    # defining a global variable for the disable button before
    user_type = "user"
    login_window = Toplevel(root)
    login_window.title("Regular User Login")
    login_window.iconbitmap("hotel.ico")
    # Username and password entry fields
    Label(login_window, text="Username:").grid(row=0, column=0, padx=10, pady=5)
    Label(login_window, text="Password:").grid(row=1, column=0, padx=10, pady=5)
    username_entry = Entry(login_window)
    username_entry.grid(row=0, column=1, padx=10, pady=5)
    password_entry = Entry(login_window, show="*")   # showing * for each input
    password_entry.grid(row=1, column=1, padx=10, pady=5)
    # Login button
    Button(login_window, text="Login", command=lambda: login("user")).grid(row=2, columnspan=2, pady=10)

    # defining the credentials of the user if they are correct
    def login(user_role):
        username = username_entry.get()
        password = password_entry.get()
        if authenticate_user(username, password, user_role):  # they are correct
            messagebox.showinfo("Login Successful", "Regular user logged in successfully!")
            open_main_window()
            login_window.destroy()
        else:
            messagebox.showerror("Login Failed", "Invalid username or password.")


# Window of admin user input
def admin_login():
    global user_type
    user_type = "admin"
    login_window = Toplevel(root)
    login_window.title("Administrator Login")
    login_window.iconbitmap("hotel.ico")
    # Username and password entry fields
    Label(login_window, text="Username:").grid(row=0, column=0, padx=10, pady=5)
    Label(login_window, text="Password:").grid(row=1, column=0, padx=10, pady=5)
    username_entry = Entry(login_window)
    username_entry.grid(row=0, column=1, padx=10, pady=5)
    password_entry = Entry(login_window, show="*")
    password_entry.grid(row=1, column=1, padx=10, pady=5)

    # Login button
    Button(login_window, text="Login", command=lambda: login("admin")).grid(row=2, columnspan=2, pady=10)

    def login(user_role):
        username = username_entry.get()
        password = password_entry.get()
        # check users credentials
        if authenticate_user(username, password, user_role):
            messagebox.showinfo("Login Successful", "Administrator logged in successfully!")
            open_main_window()
            login_window.destroy()
        else:
            messagebox.showerror("Login Failed", "Invalid username or password.")


# opens main menu window ----------------------------------
def open_main_window():
    main_window = Toplevel(root)
    main_window.title("Main Window")
    main_window.geometry("350x340")
    main_window.iconbitmap("hotel.ico")
    main_window.configure(bg="#f0f0f0")
    # Inserting fonts for the letters
    label_font = ("Arial", 16)
    button_font = ("Arial", 12)
    bg_color = "#4CAF50"  # Green color for buttons
    fg_color = "white"  # White text color for buttons
    # Choices
    Label(main_window, text="Hotel Services", font=label_font, bg="#f0f0f0").pack(pady=10)
    (Button(main_window, text="Rooms Window", command=open_room, width=30, font=button_font, fg=fg_color, bg=bg_color)
     .pack(pady=10))
    (Button(main_window, text="Booking Window", command=open_book, width=30, font=button_font, fg=fg_color, bg=bg_color)
     .pack(pady=10))
    (Button(main_window, text="Order Window", command=open_order, width=30, font=button_font, fg=fg_color, bg=bg_color)
     .pack(pady=10))
    (Button(main_window, text="Employee Window", command=open_emp, width=30, font=button_font, fg=fg_color, bg=bg_color)
     .pack(pady=10))
    (Button(main_window, text="Customer Window", command=open_cus, width=30, font=button_font, fg=fg_color, bg=bg_color)
     .pack(pady=10))

    # hide the root window
    root.withdraw()


# Function to determ if the users credentials are correct
def authenticate_user(username, password, user_role):
    conn = db_connect()
    if not conn:
        return messagebox.showerror("Database Error", "Failed to connect to the database.")
    c = conn.cursor()
    if user_role == "user":
        c.execute("SELECT * FROM user WHERE username = %s AND password = %s", (username, password))
    elif user_role == "admin":
        c.execute("SELECT * FROM administrator WHERE username = %s AND password = %s", (username, password))
    user = c.fetchone()  # retrieve the first row of the column in the database
    conn.close()
    return user is not None  # boolean expression if it is true


# Database Configuration -------------------------------------------------------------------------------------
db_config = {
    'host': 'localhost',
    'user': 'root',
    'password': '',
    'database': 'hotel'
}

# check if  the main program is executed ----------------------------------------------------------------
if __name__ == "__main__":
    root = Tk()
    root.title("HotelApp")
    root.geometry("370x240")
    root.iconbitmap("hotel.ico")
    root.configure(bg="#f0f0f0")

    Label(root, text="Welcome", font=("Italic", 16), fg="#333", bg="#f0f0f0").grid(row=0, column=1, columnspan=2,
                                                                                   pady=10)
    Label(root, text="Enter as a:", font=("Bold", 10), bg="#f0f0f0").grid(row=1, column=1, columnspan=2, pady=10)
    Button(root, text="Regular User", width=30, font=("Arial", 15), fg="white", bg="#4CAF50",
           command=regular_user_login).grid(row=2, column=1,  columnspan=2,   pady=5, padx=10)
    (Button(root, text="Administrator", width=30, font=("Arial", 15),  fg="white", bg="#4CAF50", command=admin_login)
     .grid(row=3, column=1, columnspan=3, pady=5,  padx=10))

    root.mainloop()