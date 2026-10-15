###### Class net.lingala.zip4j.model.Zip64EndCentralDirLocator (net.lingala.zip4j.model.Zip64EndCentralDirLocator)
.class public Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;
.super Ljava/lang/Object;
.source "Zip64EndCentralDirLocator.java"


# instance fields
.field private a:J

.field private b:I

.field private c:J

.field private d:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->b:I

    return v0
.end method

.method public b()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->c:J

    return-wide v0
.end method

.method public c()I
    .registers 2

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->d:I

    return v0
.end method

.method public d(I)V
    .registers 2

    .line 1
    iput p1, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->b:I

    return-void
.end method

.method public e(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->c:J

    return-void
.end method

.method public f(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->a:J

    return-void
.end method

.method public g(I)V
    .registers 2

    .line 1
    iput p1, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->d:I

    return-void
.end method
