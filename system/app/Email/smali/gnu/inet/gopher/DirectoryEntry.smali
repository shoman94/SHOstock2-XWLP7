.class public final Lgnu/inet/gopher/DirectoryEntry;
.super Ljava/lang/Object;
.source "DirectoryEntry.java"


# instance fields
.field final hostname:Ljava/lang/String;

.field final port:I

.field final selector:Ljava/lang/String;

.field final title:Ljava/lang/String;

.field final type:I


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 132
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput p1, p0, Lgnu/inet/gopher/DirectoryEntry;->type:I

    .line 134
    iput-object p2, p0, Lgnu/inet/gopher/DirectoryEntry;->title:Ljava/lang/String;

    .line 135
    iput-object p3, p0, Lgnu/inet/gopher/DirectoryEntry;->selector:Ljava/lang/String;

    .line 136
    iput-object p4, p0, Lgnu/inet/gopher/DirectoryEntry;->hostname:Ljava/lang/String;

    .line 137
    iput p5, p0, Lgnu/inet/gopher/DirectoryEntry;->port:I

    .line 138
    return-void
.end method
