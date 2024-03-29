// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class Complaint {
  String id;
  String tenantId;
  String ownerId;
  String propertyId;
  String subject;
  String description;
  String createdAt;
  String status;
  List images;
  Complaint({
    required this.id,
    required this.tenantId,
    required this.propertyId,
    required this.ownerId,
    required this.subject,
    required this.description,
    required this.createdAt,
    required this.status,
    required this.images,
  });

  Complaint copyWith({
    String? id,
    String? tenantId,
    String? ownerId,
    String? subject,
    String? description,
    String? createdAt,
    String? status,
    List? images,
    String? propertyId,
  }) {
    return Complaint(
      id: id ?? this.id,
      tenantId: tenantId ?? this.tenantId,
      propertyId: propertyId ?? this.propertyId,
      ownerId: ownerId ?? this.ownerId,
      subject: subject ?? this.subject,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
      status: status ?? this.status,
      images: images ?? this.images,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'tenantId': tenantId,
      'propertyId': propertyId,
      'ownerId': ownerId,
      'subject': subject,
      'description': description,
      'createdAt': createdAt,
      'status': status,
      'images': images,
    };
  }

  factory Complaint.fromMap(Map<String, dynamic> map) {
    return Complaint(
        id: map['id'] as String,
        tenantId: map['tenantId'] as String,
        propertyId: map['propertyId'] as String,
        ownerId: map['ownerId'] as String,
        subject: map['subject'] as String,
        description: map['description'] as String,
        createdAt: map['createdAt'] as String,
        status: map['status'] as String,
        images: List.from(
          (map['images'] as List),
        ));
  }

  String toJson() => json.encode(toMap());

  factory Complaint.fromJson(String source) =>
      Complaint.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Complaint(id: $id, tenantId: $tenantId, ownerId: $ownerId, subject: $subject, description: $description, createdAt: $createdAt, status: $status, images: $images)';
  }

  @override
  bool operator ==(covariant Complaint other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.tenantId == tenantId &&
        other.ownerId == ownerId &&
        other.subject == subject &&
        other.description == description &&
        other.createdAt == createdAt &&
        other.status == status &&
        listEquals(other.images, images);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        tenantId.hashCode ^
        ownerId.hashCode ^
        subject.hashCode ^
        description.hashCode ^
        createdAt.hashCode ^
        status.hashCode ^
        images.hashCode;
  }
}
