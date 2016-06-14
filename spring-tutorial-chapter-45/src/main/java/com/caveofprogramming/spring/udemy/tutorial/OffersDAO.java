package com.caveofprogramming.spring.udemy.tutorial;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Component;

@Component("offersDao")
public class OffersDAO {

	@Autowired
	public void setDataSource(DataSource jdbc) {
		this.jdbc = new NamedParameterJdbcTemplate(jdbc);
	}

	private NamedParameterJdbcTemplate jdbc;

	public List<Offer> getOffers() {

		// MapSqlParameterSource params = new MapSqlParameterSource("name",
		// "Sue");
		// or
		// MapSqlParameterSource params = new MapSqlParameterSource();
		// params.addValue("name", "Sue");

		// Can also use ?
		// return jdbc.query("select * from offers where name = ? ", new
		// RowMapper<Offer>() {
		return jdbc.query("select * from offers", new RowMapper<Offer>() {
			// return jdbc.query("select * from offers where name = :name ",
			// params, new RowMapper<Offer>() {

			public Offer mapRow(ResultSet rs, int rowNum) throws SQLException {
				Offer offer = new Offer();

				offer.setId(rs.getInt("id"));
				offer.setName(rs.getString("name"));
				offer.setText(rs.getString("text"));
				offer.setEmail(rs.getString("email"));
				return offer;
			}
		});
	}
	
	public boolean delete(int id) {
		MapSqlParameterSource params = new MapSqlParameterSource("id",id);
		
		return jdbc.update("delete from offers where id = :id", params) == 1;
	}

	public Offer getOffer(int id) {
		
		System.out.println( "INFO: id = " + id );

		// MapSqlParameterSource params = new MapSqlParameterSource("name",
		// "Sue");
		// or
		// MapSqlParameterSource params = new MapSqlParameterSource();
		// params.addValue("name", "Sue");
		
		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("id", id);

		// Can also use ?
		// return jdbc.query("select * from offers where name = ? ", new
		// RowMapper<Offer>() {
		return jdbc.queryForObject("select * from offers where id = :id", params, new RowMapper<Offer>() {
			// return jdbc.query("select * from offers where name = :name ",
			// params, new RowMapper<Offer>() {

			public Offer mapRow(ResultSet rs, int rowNum) throws SQLException {
				Offer offer = new Offer();

				offer.setId(rs.getInt("id"));
				offer.setName(rs.getString("name"));
				offer.setText(rs.getString("text"));
				offer.setEmail(rs.getString("email"));
				return offer;
			}
		});

	}

}
