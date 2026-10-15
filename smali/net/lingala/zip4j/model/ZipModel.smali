###### Class net.lingala.zip4j.model.ZipModel (net.lingala.zip4j.model.ZipModel)
.class public Lnet/lingala/zip4j/model/ZipModel;
.super Ljava/lang/Object;
.source "ZipModel.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private o:Ljava/util/List;

.field private p:Lnet/lingala/zip4j/model/CentralDirectory;

.field private q:Lnet/lingala/zip4j/model/EndCentralDirRecord;

.field private r:Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

.field private s:Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

.field private t:Z

.field private u:J

.field private v:Ljava/lang/String;

.field private w:Z

.field private x:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lnet/lingala/zip4j/model/ZipModel;->u:J

    return-void
.end method


# virtual methods
.method public a()Lnet/lingala/zip4j/model/CentralDirectory;
    .registers 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->p:Lnet/lingala/zip4j/model/CentralDirectory;

    return-object v0
.end method

.method public b()Lnet/lingala/zip4j/model/EndCentralDirRecord;
    .registers 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->q:Lnet/lingala/zip4j/model/EndCentralDirRecord;

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->x:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/util/List;
    .registers 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->o:Ljava/util/List;

    return-object v0
.end method

.method public g()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lnet/lingala/zip4j/model/ZipModel;->u:J

    return-wide v0
.end method

.method public h()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;
    .registers 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->r:Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    return-object v0
.end method

.method public i()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;
    .registers 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->s:Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->v:Ljava/lang/String;

    return-object v0
.end method

.method public k()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/ZipModel;->t:Z

    return v0
.end method

.method public l()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/ZipModel;->w:Z

    return v0
.end method

.method public m(Lnet/lingala/zip4j/model/CentralDirectory;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipModel;->p:Lnet/lingala/zip4j/model/CentralDirectory;

    return-void
.end method

.method public n(Lnet/lingala/zip4j/model/EndCentralDirRecord;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipModel;->q:Lnet/lingala/zip4j/model/EndCentralDirRecord;

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipModel;->x:Ljava/lang/String;

    return-void
.end method

.method public p(Ljava/util/List;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipModel;->o:Ljava/util/List;

    return-void
.end method

.method public q(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/ZipModel;->t:Z

    return-void
.end method

.method public r(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lnet/lingala/zip4j/model/ZipModel;->u:J

    return-void
.end method

.method public s(Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipModel;->r:Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    return-void
.end method

.method public t(Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipModel;->s:Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    return-void
.end method

.method public u(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/ZipModel;->w:Z

    return-void
.end method

.method public v(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipModel;->v:Ljava/lang/String;

    return-void
.end method
