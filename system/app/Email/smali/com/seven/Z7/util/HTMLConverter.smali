.class public Lcom/seven/Z7/util/HTMLConverter;
.super Ljava/lang/Object;
.source "HTMLConverter.java"


# static fields
.field private static _xmlEntities:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x192

    .line 436
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    .line 437
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "amp"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x26

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "lt"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3c

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "gt"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3e

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "quot"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x22

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "apos"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x27

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "ldquo"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x201c

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "rdquo"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x201d

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "bdquo"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x201e

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "laquo"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xab

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "raquo"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xbb

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "lsquo"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2018

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "rsquo"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2019

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "sbquo"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x201a

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "lsaquo"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2039

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "rsaquo"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x203a

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "shy"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xad

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "ndash"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2013

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "mdash"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2014

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "hellip"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2026

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "ordm"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xba

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "ordf"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xaa

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "iquest"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xbf

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "iexcl"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xa1

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "nbsp"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xa0

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "ensp"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2002

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "emsp"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2003

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "thinsp"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2009

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "zwnj"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x200c

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "zwj"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x200d

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "lrm"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x200e

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "rlm"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x200f

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "acute"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xb4

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "circ"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2c6

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "tilde"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2dc

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "uml"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xa8

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "cedil"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xb8

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "macr"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xaf

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "oline"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x203e

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Aacute"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xc1

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "aacute"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xe1

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Acirc"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xc2

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "acirc"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xe2

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Agrave"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xc0

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "agrave"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xe0

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Aring"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xc5

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "aring"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xe5

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Atilde"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xc3

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "atilde"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xe3

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Auml"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xc4

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "auml"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xe4

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "AElig"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xc6

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "aelig"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xe6

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Ccedil"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xc7

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "ccedil"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xe7

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "ETH"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xd0

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "eth"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xf0

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Eacute"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xc9

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "eacute"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xe9

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Egrave"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xc8

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "egrave"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xe8

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Euml"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xcb

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "euml"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xeb

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Ecirc"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xca

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "ecirc"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xea

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Iacute"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xcd

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "iacute"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xed

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Igrave"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xcc

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "igrave"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xec

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Iuml"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xcf

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "iuml"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xef

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Icirc"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xce

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "icirc"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xee

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Ntilde"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xd1

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "ntilde"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xf1

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Oacute"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xd3

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "oacute"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xf3

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Ograve"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xd2

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "ograve"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xf2

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Otilde"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xd5

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "otilde"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xf5

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Ouml"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xd6

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "ouml"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xf6

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Ocirc"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xd4

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "ocirc"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xf4

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Oslash"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xd8

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "oslash"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xf8

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "OElig"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x152

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "oelig"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x153

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Scaron"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x160

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "scaron"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x161

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "szlig"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xdf

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "THORN"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xde

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "thorn"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xfe

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Uacute"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xda

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "uacute"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xfa

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Ugrave"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xd9

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "ugrave"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xf9

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Uuml"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xdc

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "uuml"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xfc

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Ucirc"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xdb

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "ucirc"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xfb

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Yacute"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xdd

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "yacute"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xfd

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Yuml"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x178

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "yuml"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xff

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Alpha"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x391

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "alpha"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3b1

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Beta"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x392

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "beta"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3b2

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Gamma"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x393

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "gamma"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3b3

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Delta"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x394

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "delta"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3b4

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Epsilon"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x395

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "epsilon"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3b5

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Zeta"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x396

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "zeta"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3b6

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Eta"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x397

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "eta"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3b7

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Theta"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x398

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "theta"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3b8

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Iota"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x399

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "iota"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3b9

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Kappa"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x39a

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "kappa"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3ba

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Lambda"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x39b

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "lambda"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3bb

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Mu"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x39c

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "mu"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3bc

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Nu"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x39d

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "nu"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3bd

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Xi"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x39e

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "xi"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3be

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Omicron"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x39f

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "omicron"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3bf

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Pi"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3a0

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "pi"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3c0

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Rho"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3a1

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "rho"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3c1

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Sigma"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3a3

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "sigma"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3c3

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "sigmaf"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3c2

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Tau"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3a4

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "tau"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3c4

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Upsilon"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3a5

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "upsilon"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3c5

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Phi"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3a6

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "phi"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3c6

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Chi"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3a7

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "chi"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3c7

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Psi"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3a8

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "psi"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3c8

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Omega"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3a9

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "omega"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3c9

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "copy"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xa9

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "reg"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xae

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "trade"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2122

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "cent"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xa2

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "pound"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xa3

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "yen"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xa5

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "fnof"

    new-instance v2, Ljava/lang/Character;

    invoke-direct {v2, v4}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "euro"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x20ac

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "curren"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xa4

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "para"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xb6

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "sect"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xa7

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "dagger"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2020

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Dagger"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2021

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "brvbar"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xa6

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "middot"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xb7

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "bull"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2022

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "loz"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x25ca

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "spades"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2660

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "clubs"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2663

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "hearts"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2665

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "diams"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2666

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "larr"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2190

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "uarr"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2191

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "rarr"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2192

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "darr"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2193

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "harr"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2194

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "crarr"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x21b5

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "lArr"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x21d0

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "uArr"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x21d1

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "rArr"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x21d2

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "dArr"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x21d3

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "hArr"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x21d4

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "permil"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2030

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "times"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xd7

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "divide"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xf7

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "sup1"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xb9

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "sup2"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xb2

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "sup3"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xb3

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "frac14"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xbc

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "frac12"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xbd

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "frac34"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xbe

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "frasl"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2044

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "plusmn"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xb1

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "deg"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xb0

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "micro"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xb5

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "fnof"

    new-instance v2, Ljava/lang/Character;

    invoke-direct {v2, v4}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "not"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0xac

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "prime"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2032

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "Prime"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2033

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "thetasym"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3d1

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "upsih"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3d2

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "piv"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x3d6

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "weierp"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2118

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "image"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2111

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "real"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x211c

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "alefsym"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2135

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "forall"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2200

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "part"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2202

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "exist"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2203

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "empty"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2205

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "nabla"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2207

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "isin"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2208

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "notin"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2209

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "ni"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x220b

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "prod"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x220f

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "sum"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2211

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "minus"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2212

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "lowast"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2217

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "radic"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x221a

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "prop"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x221d

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "infin"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x221e

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "ang"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2220

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "and"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2227

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "or"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2228

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "cap"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2229

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "cup"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x222a

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "int"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x222b

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "there4"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2234

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "sim"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x223c

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "cong"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2245

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "asymp"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2248

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "ne"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2260

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "equiv"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2261

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "le"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2264

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "ge"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2265

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "sub"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2282

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "sup"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2283

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "nsub"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2284

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "sube"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2286

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "supe"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2287

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "oplus"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2295

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "otimes"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2297

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "perp"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x22a5

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "sdot"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x22c5

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "lceil"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2308

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "rceil"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2309

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "lfloor"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x230a

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "rfloor"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x230b

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "lang"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x2329

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    sget-object v0, Lcom/seven/Z7/util/HTMLConverter;->_xmlEntities:Ljava/util/Map;

    const-string v1, "rang"

    new-instance v2, Ljava/lang/Character;

    const/16 v3, 0x232a

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
