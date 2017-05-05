package Almancen;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.Serializable;

/**
 *
 * @author Eduardo
 */
public class Almacen implements Serializable {

    private static final long serialVersionUID = 1L;
    
    String Producto;
    String precios;
    int codigo;
    public Almacen(String producto, String precios, int codigo) {
      this.Producto =Producto;
      this.precios = precios;
      this.codigo = codigo;
    }

    @Override
    public String toString() {
        String producto = null;
        return "Almacen{" + "Producto=" + producto + ", precios=" + precios + ", codigo=" + codigo + '}';
    }

    public String getProducto() {
        return Producto;
    }

    public void setProducto(String Producto) {
        this.Producto = Producto;
    }

    public String getprecios() {
        return precios;
    }

    public void setprecios(String precios) {
        this.precios = precios;
    }

    public int getcodigo() {
        return codigo;
    }

    public void setcodigo(int codigo) {
        this.codigo = codigo;
    }

  
}
