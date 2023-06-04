import csv
import mysql.connector

# Connect to the database
cnx = mysql.connector.connect(
    host='localhost',
    user='root',
    password='1234',
    database='videomino'
)
cursor = cnx.cursor()



#migrar para moradas

# Read data from the CSV file
with open('../data/moradas.csv', 'r') as file:
    reader = csv.reader(file)
    next(reader)  # Skip the header row
    for row in reader:
        rua = row[0]
        num_porta = int(row[1])
        cidade = row[2]
        codigo_postal = row[3]

        # Insert the data into the Morada table
        query = "INSERT INTO Morada (rua, num_porta, cidade, codigo_postal) VALUES (%s, %s, %s, %s)"
        values = (rua, num_porta, cidade, codigo_postal)
        cursor.execute(query, values)

# Commit the changes and close the connection
cnx.commit()

#migrar para clientes

# Open the CSV file
with open('../data/clientes.csv', 'r') as file:
    # Create a CSV reader
    reader = csv.reader(file)
    
    # Skip the header row if it exists
    header = next(reader, None)
    
    # Iterate over the remaining rows
    for row in reader:
        # Extract the data from the row
        username, password, nome, nif, data_nascimento, email, n_telemovel, morada = row
        
        # Define the SQL statement to insert a row into the Cliente table
        insert_query = """
        INSERT INTO Cliente (username, password, nome, nif, data_nascimento, email, n_telemovel, morada)
        VALUES (%s, %s, %s, %s, %s, %s, %s, %s)
        """
        
        # Execute the SQL statement
        cursor.execute(insert_query, (username, password, nome, nif, data_nascimento, email, n_telemovel, morada))
        cnx.commit()




#migrar para funcionarios

# Read data from CSV and insert into the table
with open('../data/funcionarios.csv', 'r') as csvfile:
    csvreader = csv.reader(csvfile)
    next(csvreader)  # Skip header row
    
    for row in csvreader:
        nome = row[0]
        data_nascimento = row[1]
        iban = row[2]
        email = row[3]
        n_telemovel = int(row[4])
        morada = int(row[5])
        
        insert_query = '''
        INSERT INTO Funcionário (nome, data_nascimento, iban, email, n_telemovel, morada)
        VALUES (%s, %s, %s, %s, %s, %s)
        '''
        values = (nome, data_nascimento, iban, email, n_telemovel, morada)
        cursor.execute(insert_query, values)
    
    cnx.commit()

#migrar para vendas

# Read data from the CSV file and insert into the Venda table
with open('../data/vendas.csv', 'r') as csvfile:
    csvreader = csv.reader(csvfile)
    next(csvreader)  # Skip the header row

    for row in csvreader:
        idCliente = row[0]
        idFuncionário = int(row[1])
        n_artigos = int(row[2])
        preco_final = float(row[3])
        metodo = int(row[4])
        autenticidade = int(row[5])
        data = row[6]

        insert_query = """
            INSERT INTO Venda (idCliente, idFuncionário, n_artigos, preco_final, metodo, autenticidade, data)
            VALUES (%s, %s, %s, %s, %s, %s, %s)
        """
        values = (idCliente, idFuncionário, n_artigos, preco_final, metodo, autenticidade, data)
        cursor.execute(insert_query, values)

    # Commit the changes and close the cursor
    cnx.commit()


#migrar para filmes

# Reading data from the filmes.csv file and inserting into the Filme table
with open('../data/filmes.csv', 'r') as file:
    reader = csv.reader(file)
    next(reader)  # Skip the header row
    for row in reader:
        nome = row[0]
        data = row[1]
        restricao_idade = int(row[2])
        genero = row[3]
        galarduacoes = row[4]
        sinopse = row[5]
        stock = int(row[6])
        preco = float(row[7])
        
        # Inserting data into the Filme table
        cursor.execute("""
            INSERT INTO Filme (nome, data, restricao_idade, genero, galarduacoes, sinopse, stock, preco)
            VALUES (%s, %s, %s, %s, %s, %s, %s, %s)
        """, (nome, data, restricao_idade, genero, galarduacoes, sinopse, stock, preco))

    # Committing the changes to the database
    cnx.commit()


#migrar para reviews

# Read data from the CSV file and insert into the table
with open("../data/reviews.csv", "r") as file:
    reader = csv.reader(file)
    next(reader)  # Skip the header row
    for row in reader:
        # Extract values from the CSV row
        rating = int(row[0])
        comentario = row[1]
        id_filme = int(row[2])
        
        # Execute the INSERT statement
        cursor.execute("""
            INSERT INTO Review (rating, comentario, id_filme)
            VALUES (%s, %s, %s)
        """, (rating, comentario, id_filme))

# Commit the changes to the database
cnx.commit()


#migrar para venda_filmes 

# Read data from the CSV file and insert into the table
with open('../data/venda_filmes.csv', 'r') as file:
    reader = csv.reader(file)
    next(reader)  # Skip the header row

    # Iterate over each row in the CSV and insert into the table
    for row in reader:
        id_venda = int(row[0])
        id_filme = int(row[1])
        quantidade = int(row[2])
        # Insert the data into the Venda_filme table
        cursor.execute("""
            INSERT INTO Venda_filme (id_venda, id_filme, quantidade)
            VALUES (%s, %s, %s)
        """, (id_venda, id_filme, quantidade))

cnx.commit()


#migrar para fornecedores

# Read data from the CSV file and insert into the table
with open('../data/fornecedores.csv', 'r') as file:
    csv_data = csv.reader(file)
    next(csv_data)  # Skip the header row

    for row in csv_data:
        nome = row[0]
        nif = int(row[1])
        iban = row[2]
        email = row[3]

        # Insert the data into the Fornecedor table
        cursor.execute("""
            INSERT INTO Fornecedor (nome, nif, iban, email)
            VALUES (%s, %s, %s, %s)
        """, (nome, nif, iban, email))

# Commit the changes to the database
cnx.commit()

#migrar para compras

# Read data from the CSV file and insert into the Compra table
with open('../data/compras.csv', 'r') as file:
    csv_data = csv.reader(file)
    next(csv_data)  # Skip the header row

    for row in csv_data:
        
        data = row[0]
        n_artigos = int(row[1])
        preco_total = float(row[2])
        idFornecedor = int(row[3])

        # Insert the row into the Compra table
        cursor.execute("""
            INSERT INTO Compra (data,n_artigos, preco_total, idFornecedor)
            VALUES (%s, %s, %s, %s)
        """, (data, n_artigos, preco_total, idFornecedor))

# Commit the changes and close the connection
cnx.commit()

#migrar para compra_filmes

# Read data from the CSV file and insert into the table
with open('../data/compra_filmes.csv', 'r') as file:
    reader = csv.reader(file)
    next(reader)  # Skip the header row
    
    for row in reader:
        id_compra = int(row[0])
        id_filme = int(row[1])
        quantidade = int(row[2])
        insert_query = """
            INSERT INTO Compra_filme (id_compra, id_filme,quantidade)
            VALUES (%s, %s,%s)
        """
        
        cursor.execute(insert_query, (id_compra, id_filme,quantidade))
        cnx.commit()


# Close the database connection
cursor.close()
cnx.close()
