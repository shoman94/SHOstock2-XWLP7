.class public Lorg/apache/harmony/awt/datatransfer/FlavorsComparator;
.super Ljava/lang/Object;
.source "FlavorsComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/awt/datatransfer/DataFlavor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/awt/datatransfer/DataFlavor;Ljava/awt/datatransfer/DataFlavor;)I
    .locals 5
    .parameter "flav1"
    .parameter "flav2"

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 34
    invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->isFlavorTextType()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p2}, Ljava/awt/datatransfer/DataFlavor;->isFlavorTextType()Z

    move-result v4

    if-nez v4, :cond_1

    move v1, v3

    .line 42
    :cond_0
    :goto_0
    return v1

    .line 36
    :cond_1
    invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->isFlavorTextType()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p2}, Ljava/awt/datatransfer/DataFlavor;->isFlavorTextType()Z

    move-result v4

    if-nez v4, :cond_0

    .line 38
    :cond_2
    invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->isFlavorTextType()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p2}, Ljava/awt/datatransfer/DataFlavor;->isFlavorTextType()Z

    move-result v4

    if-nez v4, :cond_3

    move v1, v2

    .line 39
    goto :goto_0

    .line 41
    :cond_3
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/awt/datatransfer/DataFlavor;

    aput-object p1, v4, v3

    aput-object p2, v4, v2

    invoke-static {v4}, Ljava/awt/datatransfer/DataFlavor;->selectBestTextFlavor([Ljava/awt/datatransfer/DataFlavor;)Ljava/awt/datatransfer/DataFlavor;

    move-result-object v0

    .line 42
    .local v0, df:Ljava/awt/datatransfer/DataFlavor;
    if-eq v0, p1, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/awt/datatransfer/DataFlavor;

    check-cast p2, Ljava/awt/datatransfer/DataFlavor;

    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/awt/datatransfer/FlavorsComparator;->compare(Ljava/awt/datatransfer/DataFlavor;Ljava/awt/datatransfer/DataFlavor;)I

    move-result v0

    return v0
.end method
