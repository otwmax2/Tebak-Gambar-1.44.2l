###### Class net.lingala.zip4j.model.ExtraDataRecord (net.lingala.zip4j.model.ExtraDataRecord)
.class public Lnet/lingala/zip4j/model/ExtraDataRecord;
.super Ljava/lang/Object;
.source "ExtraDataRecord.java"


# instance fields
.field private a:J

.field private b:I

.field private c:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/ExtraDataRecord;->c:[B

    return-object v0
.end method

.method public b()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lnet/lingala/zip4j/model/ExtraDataRecord;->a:J

    return-wide v0
.end method

.method public c()I
    .registers 2

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/model/ExtraDataRecord;->b:I

    return v0
.end method

.method public d([B)V
    .registers 2

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/model/ExtraDataRecord;->c:[B

    return-void
.end method

.method public e(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lnet/lingala/zip4j/model/ExtraDataRecord;->a:J

    return-void
.end method

.method public f(I)V
    .registers 2

    .line 1
    iput p1, p0, Lnet/lingala/zip4j/model/ExtraDataRecord;->b:I

    return-void
.end method
