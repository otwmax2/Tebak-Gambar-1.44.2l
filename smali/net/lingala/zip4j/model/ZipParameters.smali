###### Class net.lingala.zip4j.model.ZipParameters (net.lingala.zip4j.model.ZipParameters)
.class public Lnet/lingala/zip4j/model/ZipParameters;
.super Ljava/lang/Object;
.source "ZipParameters.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Z

.field private o:I

.field private p:I

.field private q:Z

.field private r:I

.field private s:Z

.field private t:[C

.field private u:I

.field private v:Z

.field private w:Ljava/lang/String;

.field private x:Ljava/util/TimeZone;

.field private y:I

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 2
    iput v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->o:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->q:Z

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->s:Z

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Lnet/lingala/zip4j/model/ZipParameters;->r:I

    .line 6
    iput v1, p0, Lnet/lingala/zip4j/model/ZipParameters;->u:I

    .line 7
    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->v:Z

    .line 8
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->x:Ljava/util/TimeZone;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->u:I

    return v0
.end method

.method public b()I
    .registers 2

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->p:I

    return v0
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

.method public d()I
    .registers 2

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->o:I

    return v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->z:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .registers 2

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->r:I

    return v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->A:Ljava/lang/String;

    return-object v0
.end method

.method public i()[C
    .registers 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->t:[C

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->w:Ljava/lang/String;

    return-object v0
.end method

.method public k()I
    .registers 2

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->y:I

    return v0
.end method

.method public l()Ljava/util/TimeZone;
    .registers 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->x:Ljava/util/TimeZone;

    return-object v0
.end method

.method public m()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->q:Z

    return v0
.end method

.method public n()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->B:Z

    return v0
.end method

.method public o(I)V
    .registers 2

    .line 1
    iput p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->u:I

    return-void
.end method

.method public p(I)V
    .registers 2

    .line 1
    iput p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->o:I

    return-void
.end method

.method public q(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->q:Z

    return-void
.end method

.method public r(I)V
    .registers 2

    .line 1
    iput p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->r:I

    return-void
.end method

.method public s(I)V
    .registers 2

    .line 1
    iput p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->y:I

    return-void
.end method
