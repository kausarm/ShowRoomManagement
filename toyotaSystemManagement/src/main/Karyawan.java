/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package main;

import java.beans.PropertyChangeListener;
import java.beans.PropertyChangeSupport;
import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 *
 * @author me
 */
@Entity
@Table(name = "karyawan", catalog = "management_showroom_mobil", schema = "")
@NamedQueries({
    @NamedQuery(name = "Karyawan.findAll", query = "SELECT k FROM Karyawan k"),
    @NamedQuery(name = "Karyawan.findByIdKaryawan", query = "SELECT k FROM Karyawan k WHERE k.idKaryawan = :idKaryawan"),
    @NamedQuery(name = "Karyawan.findByNama", query = "SELECT k FROM Karyawan k WHERE k.nama = :nama"),
    @NamedQuery(name = "Karyawan.findByJenisKelamin", query = "SELECT k FROM Karyawan k WHERE k.jenisKelamin = :jenisKelamin"),
    @NamedQuery(name = "Karyawan.findByAgama", query = "SELECT k FROM Karyawan k WHERE k.agama = :agama"),
    @NamedQuery(name = "Karyawan.findByPendidikan", query = "SELECT k FROM Karyawan k WHERE k.pendidikan = :pendidikan"),
    @NamedQuery(name = "Karyawan.findByNoTelp", query = "SELECT k FROM Karyawan k WHERE k.noTelp = :noTelp"),
    @NamedQuery(name = "Karyawan.findByAlamat", query = "SELECT k FROM Karyawan k WHERE k.alamat = :alamat"),
    @NamedQuery(name = "Karyawan.findByKdDepartment", query = "SELECT k FROM Karyawan k WHERE k.kdDepartment = :kdDepartment")})
public class Karyawan implements Serializable {
    @Transient
    private PropertyChangeSupport changeSupport = new PropertyChangeSupport(this);
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "id_karyawan")
    private String idKaryawan;
    @Basic(optional = false)
    @Column(name = "nama")
    private String nama;
    @Basic(optional = false)
    @Column(name = "jenis_kelamin")
    private String jenisKelamin;
    @Basic(optional = false)
    @Column(name = "agama")
    private String agama;
    @Basic(optional = false)
    @Column(name = "pendidikan")
    private String pendidikan;
    @Basic(optional = false)
    @Column(name = "no_telp")
    private String noTelp;
    @Basic(optional = false)
    @Column(name = "alamat")
    private String alamat;
    @Basic(optional = false)
    @Column(name = "kd_department")
    private String kdDepartment;

    public Karyawan() {
    }

    public Karyawan(String idKaryawan) {
        this.idKaryawan = idKaryawan;
    }

    public Karyawan(String idKaryawan, String nama, String jenisKelamin, String agama, String pendidikan, String noTelp, String alamat, String kdDepartment) {
        this.idKaryawan = idKaryawan;
        this.nama = nama;
        this.jenisKelamin = jenisKelamin;
        this.agama = agama;
        this.pendidikan = pendidikan;
        this.noTelp = noTelp;
        this.alamat = alamat;
        this.kdDepartment = kdDepartment;
    }

    public String getIdKaryawan() {
        return idKaryawan;
    }

    public void setIdKaryawan(String idKaryawan) {
        String oldIdKaryawan = this.idKaryawan;
        this.idKaryawan = idKaryawan;
        changeSupport.firePropertyChange("idKaryawan", oldIdKaryawan, idKaryawan);
    }

    public String getNama() {
        return nama;
    }

    public void setNama(String nama) {
        String oldNama = this.nama;
        this.nama = nama;
        changeSupport.firePropertyChange("nama", oldNama, nama);
    }

    public String getJenisKelamin() {
        return jenisKelamin;
    }

    public void setJenisKelamin(String jenisKelamin) {
        String oldJenisKelamin = this.jenisKelamin;
        this.jenisKelamin = jenisKelamin;
        changeSupport.firePropertyChange("jenisKelamin", oldJenisKelamin, jenisKelamin);
    }

    public String getAgama() {
        return agama;
    }

    public void setAgama(String agama) {
        String oldAgama = this.agama;
        this.agama = agama;
        changeSupport.firePropertyChange("agama", oldAgama, agama);
    }

    public String getPendidikan() {
        return pendidikan;
    }

    public void setPendidikan(String pendidikan) {
        String oldPendidikan = this.pendidikan;
        this.pendidikan = pendidikan;
        changeSupport.firePropertyChange("pendidikan", oldPendidikan, pendidikan);
    }

    public String getNoTelp() {
        return noTelp;
    }

    public void setNoTelp(String noTelp) {
        String oldNoTelp = this.noTelp;
        this.noTelp = noTelp;
        changeSupport.firePropertyChange("noTelp", oldNoTelp, noTelp);
    }

    public String getAlamat() {
        return alamat;
    }

    public void setAlamat(String alamat) {
        String oldAlamat = this.alamat;
        this.alamat = alamat;
        changeSupport.firePropertyChange("alamat", oldAlamat, alamat);
    }

    public String getKdDepartment() {
        return kdDepartment;
    }

    public void setKdDepartment(String kdDepartment) {
        String oldKdDepartment = this.kdDepartment;
        this.kdDepartment = kdDepartment;
        changeSupport.firePropertyChange("kdDepartment", oldKdDepartment, kdDepartment);
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idKaryawan != null ? idKaryawan.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Karyawan)) {
            return false;
        }
        Karyawan other = (Karyawan) object;
        if ((this.idKaryawan == null && other.idKaryawan != null) || (this.idKaryawan != null && !this.idKaryawan.equals(other.idKaryawan))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "main.Karyawan[ idKaryawan=" + idKaryawan + " ]";
    }

    public void addPropertyChangeListener(PropertyChangeListener listener) {
        changeSupport.addPropertyChangeListener(listener);
    }

    public void removePropertyChangeListener(PropertyChangeListener listener) {
        changeSupport.removePropertyChangeListener(listener);
    }
    
}
