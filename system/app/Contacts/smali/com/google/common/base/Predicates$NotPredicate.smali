.class Lcom/google/common/base/Predicates$NotPredicate;
.super Ljava/lang/Object;
.source "Predicates.java"

# interfaces
.implements Lcom/google/common/base/Predicate;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Predicates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotPredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final predicate:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<TT;>;"
        }
    .end annotation
.end field


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 257
    .local p0, this:Lcom/google/common/base/Predicates$NotPredicate;,"Lcom/google/common/base/Predicates$NotPredicate<TT;>;"
    .local p1, t:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/google/common/base/Predicates$NotPredicate;->predicate:Lcom/google/common/base/Predicate;

    invoke-interface {v0, p1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"

    .prologue
    .line 263
    .local p0, this:Lcom/google/common/base/Predicates$NotPredicate;,"Lcom/google/common/base/Predicates$NotPredicate<TT;>;"
    instance-of v1, p1, Lcom/google/common/base/Predicates$NotPredicate;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 264
    check-cast v0, Lcom/google/common/base/Predicates$NotPredicate;

    .line 265
    .local v0, that:Lcom/google/common/base/Predicates$NotPredicate;,"Lcom/google/common/base/Predicates$NotPredicate<*>;"
    iget-object v1, p0, Lcom/google/common/base/Predicates$NotPredicate;->predicate:Lcom/google/common/base/Predicate;

    iget-object v2, v0, Lcom/google/common/base/Predicates$NotPredicate;->predicate:Lcom/google/common/base/Predicate;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 267
    .end local v0           #that:Lcom/google/common/base/Predicates$NotPredicate;,"Lcom/google/common/base/Predicates$NotPredicate<*>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 260
    .local p0, this:Lcom/google/common/base/Predicates$NotPredicate;,"Lcom/google/common/base/Predicates$NotPredicate<TT;>;"
    iget-object v0, p0, Lcom/google/common/base/Predicates$NotPredicate;->predicate:Lcom/google/common/base/Predicate;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 270
    .local p0, this:Lcom/google/common/base/Predicates$NotPredicate;,"Lcom/google/common/base/Predicates$NotPredicate<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/base/Predicates$NotPredicate;->predicate:Lcom/google/common/base/Predicate;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
