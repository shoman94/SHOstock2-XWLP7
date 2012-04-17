.class public Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;
.super Ljava/lang/Object;
.source "ResourceIDMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    }
.end annotation


# instance fields
.field protected mResourceIDs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 12

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    .line 48
    iget-object v6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x63

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v2, 0x7f020191

    const v3, 0x7f020191

    const v4, 0x7f020191

    const/high16 v5, 0x7f09

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x27

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v2, 0x7f020190

    const v3, 0x7f020190

    const/4 v4, 0x0

    const/high16 v5, 0x7f09

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x32

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v2, 0x7f020190

    const v3, 0x7f020190

    const/4 v4, 0x0

    const v5, 0x7f0900f3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x24

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v2, 0x7f020113

    const v3, 0x7f020114

    const/4 v4, 0x0

    const v5, 0x7f09002b

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v2, 0x7f02009e

    const v3, 0x7f02009f

    const/4 v4, 0x0

    const v5, 0x7f0900a3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v2, 0x7f020190

    const v3, 0x7f020190

    const/4 v4, 0x0

    const v5, 0x7f0900a2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v2, 0x7f020139

    const v3, 0x7f02013a

    const/4 v4, 0x0

    const v5, 0x7f090095

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v2, 0x7f0200e3

    const v3, 0x7f0200e3

    const/4 v4, 0x0

    const v5, 0x7f090098

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x1b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v2, 0x7f020115

    const v3, 0x7f020116

    const/4 v4, 0x0

    const v5, 0x7f090096

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v2, 0x7f020071

    const v3, 0x7f020071

    const/4 v4, 0x0

    const v5, 0x7f0900a7

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v2, 0x7f020190

    const v3, 0x7f020190

    const/4 v4, 0x0

    const v5, 0x7f090097

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v2, 0x7f020098

    const v3, 0x7f020099

    const/4 v4, 0x0

    const v5, 0x7f0900a5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v2, 0x7f020080

    const v3, 0x7f020081

    const/4 v4, 0x0

    const v5, 0x7f09009c

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v2, 0x7f020190

    const v3, 0x7f020190

    const/4 v4, 0x0

    const v5, 0x7f09009b

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v2, 0x7f020064

    const v3, 0x7f020064

    const/4 v4, 0x0

    const v5, 0x7f09009e

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v2, 0x7f020190

    const v3, 0x7f020190

    const/4 v4, 0x0

    const v5, 0x7f0900a9

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v2, 0x7f020190

    const v3, 0x7f020190

    const/4 v4, 0x0

    const v5, 0x7f0900aa

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v2, 0x7f020190

    const v3, 0x7f020190

    const/4 v4, 0x0

    const v5, 0x7f0900ab

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v2, 0x7f020190

    const v3, 0x7f020190

    const/4 v4, 0x0

    const v5, 0x7f0900ad

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0xf

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v2, 0x7f020190

    const v3, 0x7f020190

    const/4 v4, 0x0

    const v5, 0x7f0900ac

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v2, 0x7f020190

    const v3, 0x7f020190

    const/4 v4, 0x0

    const v5, 0x7f0900a8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x13

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v2, 0x7f020190

    const v3, 0x7f020190

    const/4 v4, 0x0

    const v5, 0x7f0900b0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v2, 0x7f020190

    const v3, 0x7f020190

    const/4 v4, 0x0

    const v5, 0x7f0900ae

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x33

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v2, 0x7f020190

    const v3, 0x7f020190

    const/4 v4, 0x0

    const v5, 0x7f0900bb

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v2, 0x7f020190

    const v3, 0x7f020190

    const/4 v4, 0x0

    const v5, 0x7f0900af

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x35

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v2, 0x7f020190

    const v3, 0x7f020190

    const/4 v4, 0x0

    const v5, 0x7f090099

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x36

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v2, 0x7f0201b0

    const v3, 0x7f0201b1

    const/4 v4, 0x0

    const v5, 0x7f09009a

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x37

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v2, 0x7f0200dd

    const v3, 0x7f0200de

    const/4 v4, 0x0

    const v5, 0x7f090103

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x15

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v2, 0x7f020190

    const v3, 0x7f020190

    const/4 v4, 0x0

    const v5, 0x7f09009f

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x16

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v2, 0x7f020190

    const v3, 0x7f020190

    const/4 v4, 0x0

    const v5, 0x7f0900b3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x1e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v2, 0x7f0200df

    const v3, 0x7f0200e0

    const/4 v4, 0x0

    const v5, 0x7f0900b4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x23

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v2, 0x7f020190

    const v3, 0x7f020190

    const/4 v4, 0x0

    const v5, 0x7f0900b8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0xbbc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v2, 0x7f020190

    const v3, 0x7f020190

    const/4 v4, 0x0

    const v5, 0x7f090098

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0xbb9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v2, 0x7f0200d8

    const v3, 0x7f0200d8

    const/4 v4, 0x0

    const v5, 0x7f0900a6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0xbba

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v2, 0x7f020190

    const v3, 0x7f020190

    const/4 v4, 0x0

    const v5, 0x7f090095

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0xbcf

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v2, 0x7f020115

    const v3, 0x7f020116

    const/4 v4, 0x0

    const v5, 0x7f090014

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0xbbb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v2, 0x7f02009e

    const v3, 0x7f02009f

    const/4 v4, 0x0

    const v5, 0x7f0900a3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0xbbe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v2, 0x7f020190

    const v3, 0x7f020190

    const/4 v4, 0x0

    const v5, 0x7f090097

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v0, "3264x2448"

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/CameraResolution;->compare(II)I

    move-result v0

    if-ltz v0, :cond_0

    const v5, 0x7f0900a5

    .line 202
    .local v5, exposureValueString:I
    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0xbc1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v2, 0x7f020098

    const v3, 0x7f020099

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xbce

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020190

    const v9, 0x7f020190

    const/4 v10, 0x0

    const v11, 0x7f0900b8

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xbbf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020190

    const v9, 0x7f020190

    const/4 v10, 0x0

    const v11, 0x7f09009b

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xbc0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020080

    const v9, 0x7f020081

    const/4 v10, 0x0

    const v11, 0x7f09009c

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xbc2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020190

    const v9, 0x7f020190

    const/4 v10, 0x0

    const v11, 0x7f0900ad

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xbc3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020190

    const v9, 0x7f020190

    const/4 v10, 0x0

    const v11, 0x7f0900b1

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xbcc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020190

    const v9, 0x7f020190

    const/4 v10, 0x0

    const v11, 0x7f0900b0

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xbcd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020190

    const v9, 0x7f020190

    const/4 v10, 0x0

    const v11, 0x7f0900af

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xbc9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020190

    const v9, 0x7f020190

    const/4 v10, 0x0

    const v11, 0x7f0900b3

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xbca

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200df

    const v9, 0x7f0200e0

    const/4 v10, 0x0

    const v11, 0x7f0900b4

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xbcb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020190

    const v9, 0x7f020190

    const/4 v10, 0x0

    const v11, 0x7f0900b2

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020190

    const v9, 0x7f020190

    const/4 v10, 0x0

    const/high16 v11, 0x7f09

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020190

    const v9, 0x7f020190

    const/4 v10, 0x0

    const/high16 v11, 0x7f09

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020113

    const v9, 0x7f020114

    const/4 v10, 0x0

    const v11, 0x7f09008e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xc9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020113

    const v9, 0x7f020114

    const/4 v10, 0x0

    const v11, 0x7f09008d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x12c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02013b

    const v9, 0x7f02013c

    const/4 v10, 0x0

    const v11, 0x7f09001f

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x12d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020125

    const v9, 0x7f020126

    const/4 v10, 0x0

    const v11, 0x7f090020

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x12e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020133

    const v9, 0x7f020134

    const/4 v10, 0x0

    const v11, 0x7f090022

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x12f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02013d

    const v9, 0x7f02013e

    const/4 v10, 0x0

    const v11, 0x7f090023

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x130

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020190

    const v9, 0x7f020190

    const/4 v10, 0x0

    const/high16 v11, 0x7f09

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x131

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020190

    const v9, 0x7f020190

    const/4 v10, 0x0

    const v11, 0x7f090024

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x132

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02013b

    const v9, 0x7f02013c

    const/4 v10, 0x0

    const v11, 0x7f09002b

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x133

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02011f

    const v9, 0x7f020120

    const/4 v10, 0x0

    const v11, 0x7f090025

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x134

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020149

    const v9, 0x7f02014b

    const/4 v10, 0x0

    const v11, 0x7f090026

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x135

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020190

    const v9, 0x7f020190

    const/4 v10, 0x0

    const v11, 0x7f090027

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x136

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020119

    const v9, 0x7f02011a

    const/4 v10, 0x0

    const v11, 0x7f090028

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x137

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020190

    const v9, 0x7f020190

    const/4 v10, 0x0

    const v11, 0x7f090029

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x139

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020123

    const v9, 0x7f020124

    const/4 v10, 0x0

    const v11, 0x7f09002a

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x13a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02012d

    const v9, 0x7f02012e

    const/4 v10, 0x0

    const v11, 0x7f09002d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x13b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020117

    const v9, 0x7f020118

    const/4 v10, 0x0

    const v11, 0x7f09002c

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x190

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02014a

    const v9, 0x7f02014c

    const/4 v10, 0x0

    const v11, 0x7f09002e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x191

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02014d

    const v9, 0x7f02014e

    const/4 v10, 0x0

    const v11, 0x7f09002f

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x192

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020145

    const v9, 0x7f020146

    const/4 v10, 0x0

    const v11, 0x7f090030

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x193

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020147

    const v9, 0x7f020148

    const/4 v10, 0x0

    const v11, 0x7f090031

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x194

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020190

    const v9, 0x7f020190

    const/4 v10, 0x0

    const/high16 v11, 0x7f09

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1f4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020139

    const v9, 0x7f02013a

    const/4 v10, 0x0

    const v11, 0x7f090072

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1f5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020137

    const v9, 0x7f020138

    const/4 v10, 0x0

    const v11, 0x7f090073

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1f6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02012f

    const v9, 0x7f020130

    const/4 v10, 0x0

    const v11, 0x7f090074

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1f7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020131

    const v9, 0x7f020132

    const/4 v10, 0x0

    const v11, 0x7f09007b

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1f8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02013f

    const v9, 0x7f020140

    const/4 v10, 0x0

    const v11, 0x7f090075

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1f9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020135

    const v9, 0x7f020136

    const/4 v10, 0x0

    const v11, 0x7f090076

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1fa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02011d

    const v9, 0x7f02011e

    const/4 v10, 0x0

    const v11, 0x7f090077

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1fb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020141

    const v9, 0x7f020142

    const/4 v10, 0x0

    const v11, 0x7f090078

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1fc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020127

    const v9, 0x7f020128

    const/4 v10, 0x0

    const v11, 0x7f090079

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1fd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020129

    const v9, 0x7f02012a

    const/4 v10, 0x0

    const v11, 0x7f09007a

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1fe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02012b

    const v9, 0x7f02012c

    const/4 v10, 0x0

    const v11, 0x7f09007c

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1ff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020143

    const v9, 0x7f020144

    const/4 v10, 0x0

    const v11, 0x7f09007d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x200

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020121

    const v9, 0x7f020122

    const/4 v10, 0x0

    const v11, 0x7f09007e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x201

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02011b

    const v9, 0x7f02011c

    const/4 v10, 0x0

    const v11, 0x7f09007f

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x258

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02009c

    const v9, 0x7f02009d

    const/4 v10, 0x0

    const v11, 0x7f09008e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x259

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02009e

    const v9, 0x7f02009f

    const/4 v10, 0x0

    const v11, 0x7f09008d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x25a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02009a

    const v9, 0x7f02009b

    const/4 v10, 0x0

    const v11, 0x7f09005b

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x25b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200a0

    const v9, 0x7f0200a1

    const/4 v10, 0x0

    const/high16 v11, 0x7f09

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x25c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02009c

    const v9, 0x7f02009d

    const/4 v10, 0x0

    const v11, 0x7f09008e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x25d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02009e

    const v9, 0x7f02009f

    const/4 v10, 0x0

    const v11, 0x7f09008d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x25e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02009a

    const v9, 0x7f02009b

    const/4 v10, 0x0

    const v11, 0x7f09005b

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x25f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200a0

    const v9, 0x7f0200a1

    const/4 v10, 0x0

    const/high16 v11, 0x7f09

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x2bc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200a6

    const v9, 0x7f0200a7

    const/4 v10, 0x0

    const v11, 0x7f09008e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x2bd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200a6

    const v9, 0x7f0200a7

    const/4 v10, 0x0

    const v11, 0x7f09005c

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x2be

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200aa

    const v9, 0x7f0200ab

    const/4 v10, 0x0

    const v11, 0x7f09005d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x2bf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200a8

    const v9, 0x7f0200a9

    const/4 v10, 0x0

    const v11, 0x7f09005e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x320

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020162

    const v9, 0x7f020163

    const/4 v10, 0x0

    const v11, 0x7f09008e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x321

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02015e

    const v9, 0x7f02015f

    const/4 v10, 0x0

    const v11, 0x7f090062

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x322

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020160

    const v9, 0x7f020161

    const/4 v10, 0x0

    const v11, 0x7f090063

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x323

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02015c

    const v9, 0x7f02015d

    const/4 v10, 0x0

    const v11, 0x7f090064

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x324

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020162

    const v9, 0x7f020163

    const/4 v10, 0x0

    const v11, 0x7f09008e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x325

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02015e

    const v9, 0x7f02015f

    const/4 v10, 0x0

    const v11, 0x7f090062

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x326

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020160

    const v9, 0x7f020161

    const/4 v10, 0x0

    const v11, 0x7f090063

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x327

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02015c

    const v9, 0x7f02015d

    const/4 v10, 0x0

    const v11, 0x7f090064

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x384

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020164

    const v9, 0x7f020165

    const/4 v10, 0x0

    const v11, 0x7f090032

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x385

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020168

    const v9, 0x7f020169

    const/4 v10, 0x0

    const v11, 0x7f090034

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x386

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020166

    const v9, 0x7f020167

    const/4 v10, 0x0

    const v11, 0x7f090033

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x387

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02016e

    const v9, 0x7f02016f

    const/4 v10, 0x0

    const v11, 0x7f090038

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x388

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02016a

    const v9, 0x7f02016b

    const/4 v10, 0x0

    const v11, 0x7f090035

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x389

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020170

    const v9, 0x7f020171

    const/4 v10, 0x0

    const v11, 0x7f090037

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x38a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02016c

    const v9, 0x7f02016d

    const/4 v10, 0x0

    const v11, 0x7f090036

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x38b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020164

    const v9, 0x7f020165

    const/4 v10, 0x0

    const v11, 0x7f090032

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x38c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020168

    const v9, 0x7f020169

    const/4 v10, 0x0

    const v11, 0x7f090034

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x38d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020166

    const v9, 0x7f020167

    const/4 v10, 0x0

    const v11, 0x7f090033

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x38e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02016e

    const v9, 0x7f02016f

    const/4 v10, 0x0

    const v11, 0x7f090038

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x38f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02016a

    const v9, 0x7f02016b

    const/4 v10, 0x0

    const v11, 0x7f090035

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x390

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020170

    const v9, 0x7f020171

    const/4 v10, 0x0

    const v11, 0x7f090037

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x391

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02016c

    const v9, 0x7f02016d

    const/4 v10, 0x0

    const v11, 0x7f090036

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02007e

    const v9, 0x7f02007f

    const/4 v10, 0x0

    const v11, 0x7f090072

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x3e9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02007c

    const v9, 0x7f02007d

    const/4 v10, 0x0

    const v11, 0x7f090042

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x3ea

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02007a

    const v9, 0x7f02007b

    const/4 v10, 0x0

    const v11, 0x7f090040

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x3eb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020082

    const v9, 0x7f020083

    const/4 v10, 0x0

    const v11, 0x7f090041

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x3ec

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020190

    const v9, 0x7f020190

    const/4 v10, 0x0

    const/high16 v11, 0x7f09

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x3ed

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020190

    const v9, 0x7f020190

    const/4 v10, 0x0

    const/high16 v11, 0x7f09

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x3ee

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020084

    const v9, 0x7f020085

    const/4 v10, 0x0

    const/high16 v11, 0x7f09

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x3ef

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020190

    const v9, 0x7f020190

    const/4 v10, 0x0

    const v11, 0x7f090043

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x3f0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020190

    const v9, 0x7f020190

    const/4 v10, 0x0

    const v11, 0x7f090044

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x3f1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02007e

    const v9, 0x7f02007f

    const/4 v10, 0x0

    const v11, 0x7f090072

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x3f2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02007c

    const v9, 0x7f02007d

    const/4 v10, 0x0

    const v11, 0x7f090042

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x3f3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02007a

    const v9, 0x7f02007b

    const/4 v10, 0x0

    const v11, 0x7f090040

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x3f4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020082

    const v9, 0x7f020083

    const/4 v10, 0x0

    const v11, 0x7f090041

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x3f5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020190

    const v9, 0x7f020190

    const/4 v10, 0x0

    const/high16 v11, 0x7f09

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x3f6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020190

    const v9, 0x7f020190

    const/4 v10, 0x0

    const/high16 v11, 0x7f09

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x3f7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020084

    const v9, 0x7f020085

    const/4 v10, 0x0

    const/high16 v11, 0x7f09

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x3f8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020190

    const v9, 0x7f020190

    const/4 v10, 0x0

    const v11, 0x7f090043

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x3f9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020190

    const v9, 0x7f020190

    const/4 v10, 0x0

    const v11, 0x7f090044

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x44c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200c4

    const v9, 0x7f0200c5

    const/4 v10, 0x0

    const v11, 0x7f090032

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x44d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200c0

    const v9, 0x7f0200c1

    const/4 v10, 0x0

    const v11, 0x7f090039

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x44e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200ba

    const v9, 0x7f0200bb

    const/4 v10, 0x0

    const v11, 0x7f09003a

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x44f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200bc

    const v9, 0x7f0200bd

    const/4 v10, 0x0

    const v11, 0x7f09003b

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x450

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200be

    const v9, 0x7f0200bf

    const/4 v10, 0x0

    const v11, 0x7f09003c

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x451

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200c2

    const v9, 0x7f0200c3

    const/4 v10, 0x0

    const v11, 0x7f09003d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x452

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020190

    const v9, 0x7f020190

    const/4 v10, 0x0

    const/high16 v11, 0x7f09

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x453

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020190

    const v9, 0x7f020190

    const/4 v10, 0x0

    const v11, 0x7f09003e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x454

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020190

    const v9, 0x7f020190

    const/4 v10, 0x0

    const/high16 v11, 0x7f09

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x455

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020190

    const v9, 0x7f020190

    const/4 v10, 0x0

    const v11, 0x7f09003f

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x456

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200c8

    const v9, 0x7f0200c9

    const/4 v10, 0x0

    const/high16 v11, 0x7f09

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x457

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200c6

    const v9, 0x7f0200c7

    const/4 v10, 0x0

    const/high16 v11, 0x7f09

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x458

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020190

    const v9, 0x7f020190

    const/4 v10, 0x0

    const/high16 v11, 0x7f09

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x4b0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200ca

    const v9, 0x7f0200cb

    const/4 v10, 0x0

    const v11, 0x7f090068

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x4b1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200ce

    const v9, 0x7f0200cf

    const/4 v10, 0x0

    const v11, 0x7f090069

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x4b2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200cc

    const v9, 0x7f0200cd

    const/4 v10, 0x0

    const v11, 0x7f09006a

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x514

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200d0

    const v9, 0x7f0200d1

    const/4 v10, 0x0

    const v11, 0x7f09008e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x515

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200d2

    const v9, 0x7f0200d3

    const/4 v10, 0x0

    const v11, 0x7f09008d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x578

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020065

    const v9, 0x7f020066

    const/4 v10, 0x0

    const v11, 0x7f09008e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x579

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020067

    const v9, 0x7f020068

    const/4 v10, 0x0

    const v11, 0x7f09008d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x5dc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020069

    const v9, 0x7f02006a

    const/4 v10, 0x0

    const v11, 0x7f09008e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x5dd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02006b

    const v9, 0x7f02006c

    const/4 v10, 0x0

    const v11, 0x7f09008d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x5de

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020069

    const v9, 0x7f02006a

    const/4 v10, 0x0

    const v11, 0x7f09008e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x5df

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02006b

    const v9, 0x7f02006c

    const/4 v10, 0x0

    const v11, 0x7f09008d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x640

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020073

    const v9, 0x7f020074

    const/4 v10, 0x0

    const v11, 0x7f09008e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x641

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020075

    const v9, 0x7f020076

    const/4 v10, 0x0

    const v11, 0x7f09008d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x6a4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200b8

    const v9, 0x7f0200b9

    const/4 v10, 0x0

    const v11, 0x7f090060

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x6a5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200b4

    const v9, 0x7f0200b5

    const/4 v10, 0x0

    const v11, 0x7f090061

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x6a6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200b6

    const v9, 0x7f0200b7

    const/4 v10, 0x0

    const v11, 0x7f09002e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x6a7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200b8

    const v9, 0x7f0200b9

    const/4 v10, 0x0

    const v11, 0x7f090060

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x6a8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200b4

    const v9, 0x7f0200b5

    const/4 v10, 0x0

    const v11, 0x7f090061

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x6a9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200b6

    const v9, 0x7f0200b7

    const/4 v10, 0x0

    const v11, 0x7f09002e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x708

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200b0

    const v9, 0x7f0200b1

    const/4 v10, 0x0

    const v11, 0x7f09008e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x709

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200b2

    const v9, 0x7f0200b3

    const/4 v10, 0x0

    const v11, 0x7f09008d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x70a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200b0

    const v9, 0x7f0200b1

    const/4 v10, 0x0

    const v11, 0x7f09008e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x70b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200b2

    const v9, 0x7f0200b3

    const/4 v10, 0x0

    const v11, 0x7f09008d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x76c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02010d

    const v9, 0x7f02010e

    const/4 v10, 0x0

    const v11, 0x7f09008e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x76d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02010f

    const v9, 0x7f020110

    const/4 v10, 0x0

    const v11, 0x7f09008d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xfa0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020115

    const v9, 0x7f020116

    const/4 v10, 0x0

    const v11, 0x7f09008e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xfa1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020115

    const v9, 0x7f020116

    const/4 v10, 0x0

    const v11, 0x7f09008d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x38

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020115

    const v9, 0x7f020116

    const/4 v10, 0x0

    const v11, 0x7f0900ff

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x39

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020115

    const v9, 0x7f020116

    const/4 v10, 0x0

    const v11, 0x7f090100

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xfa4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020115

    const v9, 0x7f020116

    const/4 v10, 0x0

    const v11, 0x7f09008e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xfa5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020115

    const v9, 0x7f020116

    const/4 v10, 0x0

    const v11, 0x7f09008d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x3a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020115

    const v9, 0x7f020116

    const/4 v10, 0x0

    const v11, 0x7f090101

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x76f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02010d

    const v9, 0x7f02010e

    const/4 v10, 0x0

    const v11, 0x7f09008e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x770

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02010f

    const v9, 0x7f020110

    const/4 v10, 0x0

    const v11, 0x7f09008d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x7d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200ac

    const v9, 0x7f0200ad

    const/4 v10, 0x0

    const v11, 0x7f09008e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x7d1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200ae

    const v9, 0x7f0200af

    const/4 v10, 0x0

    const v11, 0x7f09008d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x834

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020152

    const v9, 0x7f020153

    const/4 v10, 0x0

    const v11, 0x7f09008e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x835

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020154

    const v9, 0x7f020155

    const/4 v10, 0x0

    const v11, 0x7f09008d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x898

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020156

    const v9, 0x7f020157

    const/4 v10, 0x0

    const v11, 0x7f09006b

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x899

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020158

    const v9, 0x7f020159

    const/4 v10, 0x0

    const v11, 0x7f09006c

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x89a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020156

    const v9, 0x7f020157

    const/4 v10, 0x0

    const v11, 0x7f09006b

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x89b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020158

    const v9, 0x7f020159

    const/4 v10, 0x0

    const v11, 0x7f09006c

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x8fc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200f9

    const v9, 0x7f0200fa

    const/4 v10, 0x0

    const v11, 0x7f090046

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x8fd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020109

    const v9, 0x7f02010a

    const/4 v10, 0x0

    const v11, 0x7f090047

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x910

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02010b

    const v9, 0x7f02010c

    const/4 v10, 0x0

    const v11, 0x7f090048

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x8fe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200f7

    const v9, 0x7f0200f8

    const/4 v10, 0x0

    const v11, 0x7f090049

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x8ff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020107

    const v9, 0x7f020108

    const/4 v10, 0x0

    const v11, 0x7f09004a

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x900

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200f1

    const v9, 0x7f0200f2

    const/4 v10, 0x0

    const v11, 0x7f09004b

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x901

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020105

    const v9, 0x7f020106

    const/4 v10, 0x0

    const v11, 0x7f09004c

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x911

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020103

    const v9, 0x7f020104

    const/4 v10, 0x0

    const v11, 0x7f09004d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x902

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200ef

    const v9, 0x7f0200f0

    const/4 v10, 0x0

    const v11, 0x7f09004e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x903

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020101

    const v9, 0x7f020102

    const/4 v10, 0x0

    const v11, 0x7f09004f

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x904

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200eb

    const v9, 0x7f0200ec

    const/4 v10, 0x0

    const v11, 0x7f090051

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x905

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200ff

    const v9, 0x7f020100

    const/4 v10, 0x0

    const v11, 0x7f090052

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x906

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200e9

    const v9, 0x7f0200ea

    const/4 v10, 0x0

    const v11, 0x7f090053

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x912

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200fd

    const v9, 0x7f0200fe

    const/4 v10, 0x0

    const v11, 0x7f090054

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x907

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200e1

    const v9, 0x7f0200e2

    const/4 v10, 0x0

    const v11, 0x7f090057

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x908

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200fb

    const v9, 0x7f0200fc

    const/4 v10, 0x0

    const v11, 0x7f090055

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x909

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200e7

    const v9, 0x7f0200e8

    const/4 v10, 0x0

    const v11, 0x7f090050

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x90a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200e3

    const v9, 0x7f0200e4

    const/4 v10, 0x0

    const v11, 0x7f090054

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x90b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200f5

    const v9, 0x7f0200f6

    const/4 v10, 0x0

    const v11, 0x7f090056

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x90c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200f3

    const v9, 0x7f0200f4

    const/4 v10, 0x0

    const v11, 0x7f090057

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x90d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020190

    const v9, 0x7f020190

    const/4 v10, 0x0

    const v11, 0x7f090058

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x90e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200ed

    const v9, 0x7f0200ee

    const/4 v10, 0x0

    const v11, 0x7f090059

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x90f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200e5

    const v9, 0x7f0200e6

    const/4 v10, 0x0

    const v11, 0x7f09005a

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xc1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200db

    const v9, 0x7f0200dc

    const/4 v10, 0x0

    const v11, 0x7f09006d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xc1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200d9

    const v9, 0x7f0200da

    const/4 v10, 0x0

    const v11, 0x7f09006e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xc1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020190

    const v9, 0x7f020190

    const/4 v10, 0x0

    const v11, 0x7f09006f

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xc1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020111

    const v9, 0x7f020112

    const/4 v10, 0x0

    const v11, 0x7f090070

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xc80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020190

    const v9, 0x7f020190

    const/4 v10, 0x0

    const/high16 v11, 0x7f09

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xc81

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020190

    const v9, 0x7f020190

    const/4 v10, 0x0

    const/high16 v11, 0x7f09

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xce5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020190

    const v9, 0x7f020190

    const/4 v10, 0x0

    const/high16 v11, 0x7f09

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xce6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020190

    const v9, 0x7f020190

    const/4 v10, 0x0

    const/high16 v11, 0x7f09

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xd48

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200d4

    const v9, 0x7f0200d5

    const/4 v10, 0x0

    const v11, 0x7f09008e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xd49

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200d6

    const v9, 0x7f0200d7

    const/4 v10, 0x0

    const v11, 0x7f09008d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xd4a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200d4

    const v9, 0x7f0200d5

    const/4 v10, 0x0

    const v11, 0x7f09008e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xd4b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200d6

    const v9, 0x7f0200d7

    const/4 v10, 0x0

    const v11, 0x7f09008d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xdac

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020190

    const v9, 0x7f020190

    const/4 v10, 0x0

    const v11, 0x7f09008e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xdad

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020190

    const v9, 0x7f020190

    const/4 v10, 0x0

    const v11, 0x7f09008d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xe10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020086

    const v9, 0x7f020087

    const/4 v10, 0x0

    const v11, 0x7f0900f4

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xe11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020096

    const v9, 0x7f020097

    const/4 v10, 0x0

    const v11, 0x7f0900fc

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xe12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020096

    const v9, 0x7f020097

    const/4 v10, 0x0

    const v11, 0x7f0900fc

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xe13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020094

    const v9, 0x7f020095

    const/4 v10, 0x0

    const v11, 0x7f0900fb

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xe14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020092

    const v9, 0x7f020093

    const/4 v10, 0x0

    const v11, 0x7f0900fa

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xe15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020090

    const v9, 0x7f020091

    const/4 v10, 0x0

    const v11, 0x7f0900f9

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xe16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02008e

    const v9, 0x7f02008f

    const/4 v10, 0x0

    const v11, 0x7f0900f8

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xe17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02008c

    const v9, 0x7f02008d

    const/4 v10, 0x0

    const v11, 0x7f0900f7

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xe18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02008a

    const v9, 0x7f02008b

    const/4 v10, 0x0

    const v11, 0x7f0900f6

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xe19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020088

    const v9, 0x7f020089

    const/4 v10, 0x0

    const v11, 0x7f0900f5

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xe1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020086

    const v9, 0x7f020087

    const/4 v10, 0x0

    const v11, 0x7f0900f4

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xe74

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0900f3

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xed8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02006d

    const v9, 0x7f02006e

    const/4 v10, 0x0

    const v11, 0x7f09008e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xed9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02006f

    const v9, 0x7f020070

    const/4 v10, 0x0

    const v11, 0x7f09008d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xf3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200a2

    const v9, 0x7f0200a3

    const/4 v10, 0x0

    const v11, 0x7f09008e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xf3d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200a4

    const v9, 0x7f0200a5

    const/4 v10, 0x0

    const v11, 0x7f09008d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    return-void

    .line 198
    .end local v5           #exposureValueString:I
    :cond_0
    const v5, 0x7f0900a4

    goto/16 :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 536
    return-void
.end method

.method public get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    .locals 2
    .parameter "commandId"

    .prologue
    .line 522
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getResourceIDByIndex(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    .locals 2
    .parameter "index"

    .prologue
    .line 530
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 531
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    return-object v1
.end method
