.class public Lorg/apache/james/mime4j/field/DateTimeField;
.super Lorg/apache/james/mime4j/field/Field;
.source "DateTimeField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/field/DateTimeField$Parser;
    }
.end annotation


# instance fields
.field private date:Ljava/util/Date;

.field private parseException:Lorg/apache/james/mime4j/field/datetime/parser/ParseException;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lorg/apache/james/mime4j/field/datetime/parser/ParseException;)V
    .locals 0
    .parameter "name"
    .parameter "body"
    .parameter "raw"
    .parameter "date"
    .parameter "parseException"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/Field;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iput-object p4, p0, Lorg/apache/james/mime4j/field/DateTimeField;->date:Ljava/util/Date;

    .line 41
    iput-object p5, p0, Lorg/apache/james/mime4j/field/DateTimeField;->parseException:Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    .line 42
    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/apache/james/mime4j/field/DateTimeField;->date:Ljava/util/Date;

    return-object v0
.end method
