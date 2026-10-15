###### Class net.lingala.zip4j.model.Zip64ExtendedInfo (net.lingala.zip4j.model.Zip64ExtendedInfo)
.class public Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
.super Ljava/lang/Object;
.source "Zip64ExtendedInfo.java"


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->a:J

    .line 3
    iput-wide v0, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->b:J

    .line 4
    iput-wide v0, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->c:J

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->d:I

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->a:J

    return-wide v0
.end method

.method public b()I
    .registers 2

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->d:I

    return v0
.end method

.method public c()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->c:J

    return-wide v0
.end method

.method public d()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->b:J

    return-wide v0
.end method

.method public e(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->a:J

    return-void
.end method

.method public f(I)V
    .registers 2

    .line 1
    iput p1, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->d:I

    return-void
.end method

.method public g(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->c:J

    return-void
.end method

.method public h(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->b:J

    return-void
.end method
