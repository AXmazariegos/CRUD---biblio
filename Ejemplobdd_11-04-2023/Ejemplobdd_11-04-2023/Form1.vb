Imports MySql.Data.MySqlClient
Public Class Form1
    Dim bandera As Integer
    Sub cargadatagrid()
        Dim cString As String
        cString = "server=localhost;user=root;database=biblioteca;port=3306;password=CVO2023;"
        'Crear Conexión
        Dim conn As New MySqlConnection(cString)
        Try
            'Abrimos la conexión
            conn.Open()
            Dim sQuery As String
            'Crear cadena de Consulta
            sQuery = "SELECT a.idautor, CONCAT(a.nombre, ' ' , a.apellidos) As 'Nombre', a.fecha_nac, a.fecha_muerte, a.pais FROM autor a;" 'Consulta SQL
            'Se crea el Data Adapter
            Dim da As New MySqlDataAdapter(sQuery, conn)
            'Creamos un Data Table
            Dim dt As New DataTable
            'Llenamos el DataTable con el Adaptador
            da.Fill(dt)
            'Llenamos el DataGrid con el DataTable
            DataGridView1.DataSource = dt
            DataGridView1.Refresh()
            conn.Close() 'Cerramos la conexión

        Catch ex As Exception
            MessageBox.Show(ex.Message.ToString())
        End Try


    End Sub

    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        cargadatagrid()
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim nombre, apellidos, pais As String
        Dim fecha_nac, fecha_muerte As Date
        Dim sQuery As String
        nombre = TextBox1.Text
        apellidos = TextBox2.Text
        pais = TextBox3.Text
        fecha_nac = DateTimePicker1.Value.Date
        fecha_muerte = DateTimePicker2.Value.Date

        Dim cString As String 'Creo la cadena de conexión
        cString = "server = localhost;user=root;database=biblioteca;port=3306;password=CVO2023;"
        'Crear conexión
        Dim conn As New MySqlConnection(cString)
        Try
            conn.Open()
            Dim cm As New MySqlCommand
            sQuery = "INSERT INTO autor(nombre, apellidos, fecha_nac, fecha_muerte, pais)VALUES(@nombre, @apellidos, @fecha_nac ,@fecha_muerte, @pais);"
            cm.Connection() = conn
            cm.CommandText() = sQuery
            cm.Parameters.AddWithValue("@nombre", nombre)
            cm.Parameters.AddWithValue("@apellidos", apellidos)
            cm.Parameters.AddWithValue("@fecha_nac", fecha_nac)
            cm.Parameters.AddWithValue("@fecha_muerte", fecha_muerte)
            cm.Parameters.AddWithValue("@pais", pais)
            cm.ExecuteNonQuery()
            MessageBox.Show("Guardado con Éxito!")
            cargadatagrid()
            conn.Close()
        Catch ex As Exception
            MessageBox.Show(ex.Message.ToString())
        End Try
        'Dim con As New MySqlConnection(cString)
        'sQuery = "INSERT INTO autor(nombre, apellidos, fecha_nac, fecha_muerte, pais)VALUES('" & nombre & " ', '" & apellidos & "', '" & pais & "', " & fecha_nac & ", " & fecha_muerte & ");"
        'MessageBox.Show(sQuery)
    End Sub

    Private Sub DataGridView1_CellContentClick(sender As Object, e As DataGridViewCellEventArgs) Handles DataGridView1.CellContentClick
        Dim idautor As Integer
        idautor = DataGridView1.CurrentRow.Cells(0).Value
        Dim sQuery As String
        sQuery = "SELECT * FROM autor WHERE idautor=" & idautor & ";"
        Dim cString As String 'Creo la cadena de conexión
        cString = "server=local;user=root;database=biblioteca;port=3306;password=CVO2023;"
        'Crear conexión 
        bandera = idautor
        Try
            Dim conn As New MySqlConnection(cString)
            Dim da As New MySqlDataAdapter(sQuery, conn)
            Dim dt As New DataTable()
            da.Fill(dt)
            If dt.Rows.Count > 0 Then
                Dim fila As DataRow = dt.Rows(0)
                TextBox1.Text = fila("nombre").ToString()
                TextBox2.Text = fila("apellidos").ToString()
                TextBox3.Text = fila("pais").ToString()
                DateTimePicker1.Value = Convert.ToDateTime(fila("fecha_nac")).Date
                DateTimePicker2.Value = Convert.ToDateTime(fila("fecha_muerte")).Date
            Else
                MessageBox.Show("No existe el autor")
            End If
        Catch ex As Exception
            MessageBox.Show(ex.Message.ToString())
        End Try
    End Sub

    Private Sub CheckBox1_CheckedChanged(sender As Object, e As EventArgs) Handles CheckBox1.CheckedChanged
        If CheckBox1.Enabled = False Then

        End If
    End Sub
End Class
