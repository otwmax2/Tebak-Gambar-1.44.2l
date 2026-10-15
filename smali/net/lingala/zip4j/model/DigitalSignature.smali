###### Class net.lingala.zip4j.model.DigitalSignature (net.lingala.zip4j.model.DigitalSignature)
.class public Lnet/lingala/zip4j/model/DigitalSignature;
.super Ljava/lang/Object;
.source "DigitalSignature.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2

    .line 1
    iput p1, p0, Lnet/lingala/zip4j/model/DigitalSignature;->a:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/model/DigitalSignature;->c:Ljava/lang/String;

    return-void
.end method

.method public c(I)V
    .registers 2

    .line 1
    iput p1, p0, Lnet/lingala/zip4j/model/DigitalSignature;->b:I

    return-void
.end method
