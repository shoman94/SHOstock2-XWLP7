.class Lorg/apache/commons/lang/Entities$LookupEntityMap;
.super Lorg/apache/commons/lang/Entities$PrimitiveEntityMap;
.source "Entities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang/Entities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LookupEntityMap"
.end annotation


# instance fields
.field private final LOOKUP_TABLE_SIZE:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 537
    invoke-direct {p0}, Lorg/apache/commons/lang/Entities$PrimitiveEntityMap;-><init>()V

    .line 541
    const/16 v0, 0x100

    iput v0, p0, Lorg/apache/commons/lang/Entities$LookupEntityMap;->LOOKUP_TABLE_SIZE:I

    return-void
.end method
