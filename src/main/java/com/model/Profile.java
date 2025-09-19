package com.model;
import java.util.List;

public record Profile(String fullName, String headline, String bio, List<Link> links) {}