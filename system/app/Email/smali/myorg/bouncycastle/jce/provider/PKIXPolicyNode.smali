.class public Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
.super Ljava/lang/Object;
.source "PKIXPolicyNode.java"

# interfaces
.implements Ljava/security/cert/PolicyNode;


# instance fields
.field protected children:Ljava/util/List;

.field protected critical:Z

.field protected depth:I

.field protected expectedPolicies:Ljava/util/Set;

.field protected parent:Ljava/security/cert/PolicyNode;

.field protected policyQualifiers:Ljava/util/Set;

.field protected validPolicy:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V
    .locals 0
    .parameter "_children"
    .parameter "_depth"
    .parameter "_expectedPolicies"
    .parameter "_parent"
    .parameter "_policyQualifiers"
    .parameter "_validPolicy"
    .parameter "_critical"

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->children:Ljava/util/List;

    .line 27
    iput p2, p0, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->depth:I

    .line 28
    iput-object p3, p0, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->expectedPolicies:Ljava/util/Set;

    .line 29
    iput-object p4, p0, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->parent:Ljava/security/cert/PolicyNode;

    .line 30
    iput-object p5, p0, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->policyQualifiers:Ljava/util/Set;

    .line 31
    iput-object p6, p0, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->validPolicy:Ljava/lang/String;

    .line 32
    iput-boolean p7, p0, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->critical:Z

    .line 33
    return-void
.end method


# virtual methods
.method public addChild(Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;)V
    .locals 1
    .parameter "_child"

    .prologue
    .line 36
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-virtual {p1, p0}, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->setParent(Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 38
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->copy()Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .locals 10

    .prologue
    .line 108
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 109
    .local v3, _expectedPolicies:Ljava/util/Set;
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->expectedPolicies:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 110
    .local v9, _iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    new-instance v2, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    :cond_0
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 115
    .local v5, _policyQualifiers:Ljava/util/Set;
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->policyQualifiers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 116
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    new-instance v2, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 120
    :cond_1
    new-instance v0, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v2, p0, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->depth:I

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->validPolicy:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iget-boolean v7, p0, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->critical:Z

    invoke-direct/range {v0 .. v7}, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 123
    .local v0, _node:Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 124
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 125
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;

    invoke-virtual {v1}, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->copy()Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v8

    .line 126
    .local v8, _child:Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v8, v0}, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->setParent(Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 127
    invoke-virtual {v0, v8}, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;)V

    goto :goto_2

    .line 130
    .end local v8           #_child:Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_2
    return-object v0
.end method

.method public getChildren()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->depth:I

    return v0
.end method

.method public getExpectedPolicies()Ljava/util/Set;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->expectedPolicies:Ljava/util/Set;

    return-object v0
.end method

.method public getParent()Ljava/security/cert/PolicyNode;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->parent:Ljava/security/cert/PolicyNode;

    return-object v0
.end method

.method public getPolicyQualifiers()Ljava/util/Set;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->policyQualifiers:Ljava/util/Set;

    return-object v0
.end method

.method public getValidPolicy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->validPolicy:Ljava/lang/String;

    return-object v0
.end method

.method public hasChildren()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCritical()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->critical:Z

    return v0
.end method

.method public removeChild(Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;)V
    .locals 1
    .parameter "_child"

    .prologue
    .line 73
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public setCritical(Z)V
    .locals 0
    .parameter "_critical"

    .prologue
    .line 77
    iput-boolean p1, p0, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->critical:Z

    .line 78
    return-void
.end method

.method public setParent(Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;)V
    .locals 0
    .parameter "_parent"

    .prologue
    .line 81
    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->parent:Ljava/security/cert/PolicyNode;

    .line 82
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string v0, ""

    invoke-virtual {p0, v0}, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "_indent"

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 90
    .local v0, _buf:Ljava/lang/StringBuffer;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->validPolicy:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    const-string v2, " {\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 95
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->children:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    const-string v2, "}\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
