###### Class net.lingala.zip4j.model.AESExtraDataRecord (net.lingala.zip4j.model.AESExtraDataRecord)
.class public Lnet/lingala/zip4j/model/AESExtraDataRecord;
.super Ljava/lang/Object;
.source "AESExtraDataRecord.java"


# instance fields
.field private a:J

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->a:J

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->b:I

    .line 4
    iput v0, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->c:I

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->d:Ljava/lang/String;

    .line 6
    iput v0, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->e:I

    .line 7
    iput v0, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->f:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->e:I

    return v0
.end method

.method public b()I
    .registers 2

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->f:I

    return v0
.end method

.method public c()I
    .registers 2

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->b:I

    return v0
.end method

.method public d()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->a:J

    return-wide v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .registers 2

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->c:I

    return v0
.end method

.method public g(I)V
    .registers 2

    .line 1
    iput p1, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->e:I

    return-void
.end method

.method public h(I)V
    .registers 2

    .line 1
    iput p1, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->f:I

    return-void
.end method

.method public i(I)V
    .registers 2

    .line 1
    iput p1, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->b:I

    return-void
.end method

.method public j(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->a:J

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->d:Ljava/lang/String;

    return-void
.end method

.method public l(I)V
    .registers 2

    .line 1
    iput p1, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->c:I

    return-void
.end method
