<?php 
class Conexion 
{ 
    // Datos requeridos para el acceso a la base de datos
    private $hostBd = 'localhost'; 
    private $nombreBd = 'web_service'; 
    private $usuarioBd = 'root';
    private $passwordbs = ''; 
    private $pdo; // Propiedad para almacenar el objeto PDO ese 
 
    public function __construct() 
    { 
        try { 
            // Hace una nueva conexión PDO 
            $this->pdo = new PDO("mysql:host=$this->hostBd;dbname=$this->nombreBd;charset=utf8", $this->usuarioBd, $this->passwordbs); 
 
            // Conecta el modo de errores de PDO a eventosatipicos 
            $this->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); 
        } catch (PDOException $e) { 
            echo "Error al conectar a la base de datos: " . $e->getMessage(); 
            exit; 
        } 
    } 
 
    public function obtenerConexion() 
    { 
        return $this->pdo; 
    } 
} 
