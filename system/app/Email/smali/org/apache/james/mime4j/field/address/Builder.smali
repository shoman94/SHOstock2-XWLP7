.class Lorg/apache/james/mime4j/field/address/Builder;
.super Ljava/lang/Object;
.source "Builder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;
    }
.end annotation


# static fields
.field private static singleton:Lorg/apache/james/mime4j/field/address/Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lorg/apache/james/mime4j/field/address/Builder;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/address/Builder;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/address/Builder;->singleton:Lorg/apache/james/mime4j/field/address/Builder;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 197
    return-void
.end method

.method private addSpecials(Ljava/lang/StringBuffer;Lorg/apache/james/mime4j/field/address/parser/Token;)V
    .locals 1
    .parameter "out"
    .parameter "specialToken"

    .prologue
    .line 191
    if-eqz p2, :cond_0

    .line 192
    iget-object v0, p2, Lorg/apache/james/mime4j/field/address/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/field/address/Builder;->addSpecials(Ljava/lang/StringBuffer;Lorg/apache/james/mime4j/field/address/parser/Token;)V

    .line 193
    iget-object v0, p2, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    :cond_0
    return-void
.end method

.method private buildAddrSpec(Lorg/apache/james/mime4j/field/address/DomainList;Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;)Lorg/apache/james/mime4j/field/address/Mailbox;
    .locals 5
    .parameter "route"
    .parameter "node"

    .prologue
    const/4 v4, 0x1

    .line 168
    new-instance v1, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v1, p2}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;)V

    .line 169
    .local v1, it:Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v3

    check-cast v3, Lorg/apache/james/mime4j/field/address/parser/ASTlocal_part;

    invoke-direct {p0, v3, v4}, Lorg/apache/james/mime4j/field/address/Builder;->buildString(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, localPart:Ljava/lang/String;
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v3

    check-cast v3, Lorg/apache/james/mime4j/field/address/parser/ASTdomain;

    invoke-direct {p0, v3, v4}, Lorg/apache/james/mime4j/field/address/Builder;->buildString(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, domain:Ljava/lang/String;
    new-instance v3, Lorg/apache/james/mime4j/field/address/Mailbox;

    invoke-direct {v3, p1, v2, v0}, Lorg/apache/james/mime4j/field/address/Mailbox;-><init>(Lorg/apache/james/mime4j/field/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private buildAddrSpec(Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;)Lorg/apache/james/mime4j/field/address/Mailbox;
    .locals 1
    .parameter "node"

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/field/address/Builder;->buildAddrSpec(Lorg/apache/james/mime4j/field/address/DomainList;Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v0

    return-object v0
.end method

.method private buildAddress(Lorg/apache/james/mime4j/field/address/parser/ASTaddress;)Lorg/apache/james/mime4j/field/address/Address;
    .locals 6
    .parameter "node"

    .prologue
    .line 64
    new-instance v0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;)V

    .line 65
    .local v0, it:Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    .line 66
    .local v1, n:Lorg/apache/james/mime4j/field/address/parser/Node;
    instance-of v4, v1, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    if-eqz v4, :cond_0

    .line 67
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    .end local v1           #n:Lorg/apache/james/mime4j/field/address/parser/Node;
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/Builder;->buildAddrSpec(Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v4

    .line 77
    :goto_0
    return-object v4

    .line 68
    .restart local v1       #n:Lorg/apache/james/mime4j/field/address/parser/Node;
    :cond_0
    instance-of v4, v1, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    if-eqz v4, :cond_1

    .line 69
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    .end local v1           #n:Lorg/apache/james/mime4j/field/address/parser/Node;
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/Builder;->buildAngleAddr(Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v4

    goto :goto_0

    .line 70
    .restart local v1       #n:Lorg/apache/james/mime4j/field/address/parser/Node;
    :cond_1
    instance-of v4, v1, Lorg/apache/james/mime4j/field/address/parser/ASTphrase;

    if-eqz v4, :cond_4

    .line 71
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ASTphrase;

    .end local v1           #n:Lorg/apache/james/mime4j/field/address/parser/Node;
    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lorg/apache/james/mime4j/field/address/Builder;->buildString(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, name:Ljava/lang/String;
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v2

    .line 73
    .local v2, n2:Lorg/apache/james/mime4j/field/address/parser/Node;
    instance-of v4, v2, Lorg/apache/james/mime4j/field/address/parser/ASTgroup_body;

    if-eqz v4, :cond_2

    .line 74
    new-instance v4, Lorg/apache/james/mime4j/field/address/Group;

    check-cast v2, Lorg/apache/james/mime4j/field/address/parser/ASTgroup_body;

    .end local v2           #n2:Lorg/apache/james/mime4j/field/address/parser/Node;
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/Builder;->buildGroupBody(Lorg/apache/james/mime4j/field/address/parser/ASTgroup_body;)Lorg/apache/james/mime4j/field/address/MailboxList;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lorg/apache/james/mime4j/field/address/Group;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/MailboxList;)V

    goto :goto_0

    .line 75
    .restart local v2       #n2:Lorg/apache/james/mime4j/field/address/parser/Node;
    :cond_2
    instance-of v4, v2, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    if-eqz v4, :cond_3

    .line 76
    invoke-static {v3}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 77
    new-instance v4, Lorg/apache/james/mime4j/field/address/NamedMailbox;

    check-cast v2, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    .end local v2           #n2:Lorg/apache/james/mime4j/field/address/parser/Node;
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/Builder;->buildAngleAddr(Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lorg/apache/james/mime4j/field/address/NamedMailbox;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Mailbox;)V

    goto :goto_0

    .line 79
    .restart local v2       #n2:Lorg/apache/james/mime4j/field/address/parser/Node;
    :cond_3
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 82
    .end local v2           #n2:Lorg/apache/james/mime4j/field/address/parser/Node;
    .end local v3           #name:Ljava/lang/String;
    .restart local v1       #n:Lorg/apache/james/mime4j/field/address/parser/Node;
    :cond_4
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4
.end method

.method private buildAngleAddr(Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;)Lorg/apache/james/mime4j/field/address/Mailbox;
    .locals 4
    .parameter "node"

    .prologue
    .line 133
    new-instance v0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;)V

    .line 134
    .local v0, it:Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;
    const/4 v2, 0x0

    .line 135
    .local v2, route:Lorg/apache/james/mime4j/field/address/DomainList;
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    .line 136
    .local v1, n:Lorg/apache/james/mime4j/field/address/parser/Node;
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ASTroute;

    if-eqz v3, :cond_1

    .line 137
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ASTroute;

    .end local v1           #n:Lorg/apache/james/mime4j/field/address/parser/Node;
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/Builder;->buildRoute(Lorg/apache/james/mime4j/field/address/parser/ASTroute;)Lorg/apache/james/mime4j/field/address/DomainList;

    move-result-object v2

    .line 138
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    .line 144
    .restart local v1       #n:Lorg/apache/james/mime4j/field/address/parser/Node;
    :cond_0
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    if-eqz v3, :cond_2

    .line 145
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    .end local v1           #n:Lorg/apache/james/mime4j/field/address/parser/Node;
    invoke-direct {p0, v2, v1}, Lorg/apache/james/mime4j/field/address/Builder;->buildAddrSpec(Lorg/apache/james/mime4j/field/address/DomainList;Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v3

    return-object v3

    .line 139
    .restart local v1       #n:Lorg/apache/james/mime4j/field/address/parser/Node;
    :cond_1
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    if-nez v3, :cond_0

    .line 142
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 147
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3
.end method

.method private buildGroupBody(Lorg/apache/james/mime4j/field/address/parser/ASTgroup_body;)Lorg/apache/james/mime4j/field/address/MailboxList;
    .locals 5
    .parameter "node"

    .prologue
    .line 87
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v2, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/james/mime4j/field/address/Address;>;"
    new-instance v0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;)V

    .line 89
    .local v0, it:Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;
    :goto_0
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 90
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    .line 91
    .local v1, n:Lorg/apache/james/mime4j/field/address/parser/Node;
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ASTmailbox;

    if-eqz v3, :cond_0

    .line 92
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ASTmailbox;

    .end local v1           #n:Lorg/apache/james/mime4j/field/address/parser/Node;
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/Builder;->buildMailbox(Lorg/apache/james/mime4j/field/address/parser/ASTmailbox;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    .restart local v1       #n:Lorg/apache/james/mime4j/field/address/parser/Node;
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 96
    .end local v1           #n:Lorg/apache/james/mime4j/field/address/parser/Node;
    :cond_1
    new-instance v3, Lorg/apache/james/mime4j/field/address/MailboxList;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Lorg/apache/james/mime4j/field/address/MailboxList;-><init>(Ljava/util/ArrayList;Z)V

    return-object v3
.end method

.method private buildMailbox(Lorg/apache/james/mime4j/field/address/parser/ASTmailbox;)Lorg/apache/james/mime4j/field/address/Mailbox;
    .locals 3
    .parameter "node"

    .prologue
    .line 100
    new-instance v0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;)V

    .line 101
    .local v0, it:Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    .line 102
    .local v1, n:Lorg/apache/james/mime4j/field/address/parser/Node;
    instance-of v2, v1, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    if-eqz v2, :cond_0

    .line 103
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    .end local v1           #n:Lorg/apache/james/mime4j/field/address/parser/Node;
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/Builder;->buildAddrSpec(Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v2

    .line 107
    :goto_0
    return-object v2

    .line 104
    .restart local v1       #n:Lorg/apache/james/mime4j/field/address/parser/Node;
    :cond_0
    instance-of v2, v1, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    if-eqz v2, :cond_1

    .line 105
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    .end local v1           #n:Lorg/apache/james/mime4j/field/address/parser/Node;
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/Builder;->buildAngleAddr(Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v2

    goto :goto_0

    .line 106
    .restart local v1       #n:Lorg/apache/james/mime4j/field/address/parser/Node;
    :cond_1
    instance-of v2, v1, Lorg/apache/james/mime4j/field/address/parser/ASTname_addr;

    if-eqz v2, :cond_2

    .line 107
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ASTname_addr;

    .end local v1           #n:Lorg/apache/james/mime4j/field/address/parser/Node;
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/Builder;->buildNameAddr(Lorg/apache/james/mime4j/field/address/parser/ASTname_addr;)Lorg/apache/james/mime4j/field/address/NamedMailbox;

    move-result-object v2

    goto :goto_0

    .line 109
    .restart local v1       #n:Lorg/apache/james/mime4j/field/address/parser/Node;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2
.end method

.method private buildNameAddr(Lorg/apache/james/mime4j/field/address/parser/ASTname_addr;)Lorg/apache/james/mime4j/field/address/NamedMailbox;
    .locals 5
    .parameter "node"

    .prologue
    .line 114
    new-instance v0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;)V

    .line 115
    .local v0, it:Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    .line 117
    .local v1, n:Lorg/apache/james/mime4j/field/address/parser/Node;
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ASTphrase;

    if-eqz v3, :cond_0

    .line 118
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ASTphrase;

    .end local v1           #n:Lorg/apache/james/mime4j/field/address/parser/Node;
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lorg/apache/james/mime4j/field/address/Builder;->buildString(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    .line 124
    .restart local v1       #n:Lorg/apache/james/mime4j/field/address/parser/Node;
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    if-eqz v3, :cond_1

    .line 125
    invoke-static {v2}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 126
    new-instance v3, Lorg/apache/james/mime4j/field/address/NamedMailbox;

    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    .end local v1           #n:Lorg/apache/james/mime4j/field/address/parser/Node;
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/Builder;->buildAngleAddr(Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lorg/apache/james/mime4j/field/address/NamedMailbox;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Mailbox;)V

    return-object v3

    .line 120
    .end local v2           #name:Ljava/lang/String;
    .restart local v1       #n:Lorg/apache/james/mime4j/field/address/parser/Node;
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 128
    .restart local v2       #name:Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3
.end method

.method private buildRoute(Lorg/apache/james/mime4j/field/address/parser/ASTroute;)Lorg/apache/james/mime4j/field/address/DomainList;
    .locals 5
    .parameter "node"

    .prologue
    const/4 v4, 0x1

    .line 151
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/apache/james/mime4j/field/address/parser/ASTroute;->jjtGetNumChildren()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 152
    .local v2, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;)V

    .line 153
    .local v0, it:Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;
    :goto_0
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 154
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    .line 155
    .local v1, n:Lorg/apache/james/mime4j/field/address/parser/Node;
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ASTdomain;

    if-eqz v3, :cond_0

    .line 156
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ASTdomain;

    .end local v1           #n:Lorg/apache/james/mime4j/field/address/parser/Node;
    invoke-direct {p0, v1, v4}, Lorg/apache/james/mime4j/field/address/Builder;->buildString(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 158
    .restart local v1       #n:Lorg/apache/james/mime4j/field/address/parser/Node;
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 160
    .end local v1           #n:Lorg/apache/james/mime4j/field/address/parser/Node;
    :cond_1
    new-instance v3, Lorg/apache/james/mime4j/field/address/DomainList;

    invoke-direct {v3, v2, v4}, Lorg/apache/james/mime4j/field/address/DomainList;-><init>(Ljava/util/ArrayList;Z)V

    return-object v3
.end method

.method private buildString(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;
    .locals 4
    .parameter "node"
    .parameter "stripSpaces"

    .prologue
    .line 175
    iget-object v0, p1, Lorg/apache/james/mime4j/field/address/parser/BaseNode;->firstToken:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 176
    .local v0, head:Lorg/apache/james/mime4j/field/address/parser/Token;
    iget-object v2, p1, Lorg/apache/james/mime4j/field/address/parser/BaseNode;->lastToken:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 177
    .local v2, tail:Lorg/apache/james/mime4j/field/address/parser/Token;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 179
    .local v1, out:Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    if-eq v0, v2, :cond_1

    .line 180
    iget-object v3, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 182
    if-nez p2, :cond_0

    .line 183
    iget-object v3, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {p0, v1, v3}, Lorg/apache/james/mime4j/field/address/Builder;->addSpecials(Ljava/lang/StringBuffer;Lorg/apache/james/mime4j/field/address/parser/Token;)V

    goto :goto_0

    .line 185
    :cond_1
    iget-object v3, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getInstance()Lorg/apache/james/mime4j/field/address/Builder;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lorg/apache/james/mime4j/field/address/Builder;->singleton:Lorg/apache/james/mime4j/field/address/Builder;

    return-object v0
.end method


# virtual methods
.method public buildAddressList(Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;)Lorg/apache/james/mime4j/field/address/AddressList;
    .locals 6
    .parameter "node"

    .prologue
    .line 54
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/james/mime4j/field/address/Address;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;->jjtGetNumChildren()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 56
    invoke-virtual {p1, v2}, Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;->jjtGetChild(I)Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ASTaddress;

    .line 57
    .local v1, childNode:Lorg/apache/james/mime4j/field/address/parser/ASTaddress;
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/Builder;->buildAddress(Lorg/apache/james/mime4j/field/address/parser/ASTaddress;)Lorg/apache/james/mime4j/field/address/Address;

    move-result-object v0

    .line 58
    .local v0, address:Lorg/apache/james/mime4j/field/address/Address;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    .end local v0           #address:Lorg/apache/james/mime4j/field/address/Address;
    .end local v1           #childNode:Lorg/apache/james/mime4j/field/address/parser/ASTaddress;
    :cond_0
    new-instance v4, Lorg/apache/james/mime4j/field/address/AddressList;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, Lorg/apache/james/mime4j/field/address/AddressList;-><init>(Ljava/util/ArrayList;Z)V

    return-object v4
.end method
