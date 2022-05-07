package Connect;

import com.mongodb.*;
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Filters;

import com.mongodb.client.model.UpdateOptions;
import com.mongodb.client.result.*;
import org.bson.Document;
import org.bson.types.ObjectId;

import java.util.List;
import java.util.Arrays;
import java.util.ArrayList;

import static com.mongodb.client.model.Filters.*;
import static com.mongodb.client.model.Updates.*;

public class Connection {
	public MongoCollection<Document> getCollection(String collectionName){		
		ConnectionString connectionString = new ConnectionString("mongodb+srv://aadt:aadt#resumeBuilder@cluster0.rlgz4.mongodb.net/ResumeBuilder?retryWrites=true&w=majority");
		MongoClientSettings settings = MongoClientSettings.builder()
		        .applyConnectionString(connectionString)
		        .build();
		MongoClient mongoClient = MongoClients.create(settings);
		MongoDatabase database = mongoClient.getDatabase("ResumeBuilder");
		MongoCollection<Document> collection = database.getCollection(collectionName); 
		System.out.println("Connection Success");
		return collection;
	}
}

