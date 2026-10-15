###### Class net.lingala.zip4j.model.LocalFileHeader (net.lingala.zip4j.model.LocalFileHeader)
.class public Lnet/lingala/zip4j/model/LocalFileHeader;
.super Ljava/lang/Object;
.source "LocalFileHeader.java"


# instance fields
.field private a:I

.field private b:I

.field private c:[B

.field private d:I

.field private e:I

.field private f:J

.field private g:[B

.field private h:J

.field private i:J

.field private j:I

.field private k:I

.field private l:Ljava/lang/String;

.field private m:J

.field private n:Z

.field private o:I

.field private p:[C

.field private q:Ljava/util/ArrayList;

.field private r:Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

.field private s:Lnet/lingala/zip4j/model/AESExtraDataRecord;

.field private t:Z

.field private u:Z

.field private v:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->o:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->u:Z

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->f:J

    .line 5
    iput-wide v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->i:J

    return-void
.end method


# virtual methods
.method public A(Ljava/util/ArrayList;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->q:Ljava/util/ArrayList;

    return-void
.end method

.method public B(I)V
    .registers 2

    .line 1
    iput p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->k:I

    return-void
.end method

.method public C(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->l:Ljava/lang/String;

    return-void
.end method

.method public D(I)V
    .registers 2

    .line 1
    iput p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->j:I

    return-void
.end method

.method public E(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->v:Z

    return-void
.end method

.method public F([B)V
    .registers 2

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->c:[B

    return-void
.end method

.method public G(I)V
    .registers 2

    .line 1
    iput p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->e:I

    return-void
.end method

.method public H(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->m:J

    return-void
.end method

.method public I([C)V
    .registers 2

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->p:[C

    return-void
.end method

.method public J(I)V
    .registers 2

    .line 1
    iput p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->a:I

    return-void
.end method

.method public K(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->i:J

    return-void
.end method

.method public L(I)V
    .registers 2

    .line 1
    iput p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->b:I

    return-void
.end method

.method public M(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->u:Z

    return-void
.end method

.method public N(Lnet/lingala/zip4j/model/Zip64ExtendedInfo;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->r:Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    return-void
.end method

.method public a()Lnet/lingala/zip4j/model/AESExtraDataRecord;
    .registers 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->s:Lnet/lingala/zip4j/model/AESExtraDataRecord;

    return-object v0
.end method

.method public b()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->h:J

    return-wide v0
.end method

.method public c()I
    .registers 2

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->d:I

    return v0
.end method

.method public d()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->f:J

    return-wide v0
.end method

.method public e()I
    .registers 2

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->o:I

    return v0
.end method

.method public f()Ljava/util/ArrayList;
    .registers 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->q:Ljava/util/ArrayList;

    return-object v0
.end method

.method public g()I
    .registers 2

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->k:I

    return v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->l:Ljava/lang/String;

    return-object v0
.end method

.method public i()I
    .registers 2

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->j:I

    return v0
.end method

.method public j()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->c:[B

    return-object v0
.end method

.method public k()I
    .registers 2

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->e:I

    return v0
.end method

.method public l()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->m:J

    return-wide v0
.end method

.method public m()[C
    .registers 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->p:[C

    return-object v0
.end method

.method public n()I
    .registers 2

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->a:I

    return v0
.end method

.method public o()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->i:J

    return-wide v0
.end method

.method public p()I
    .registers 2

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->b:I

    return v0
.end method

.method public q()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->n:Z

    return v0
.end method

.method public r()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->v:Z

    return v0
.end method

.method public s(Lnet/lingala/zip4j/model/AESExtraDataRecord;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->s:Lnet/lingala/zip4j/model/AESExtraDataRecord;

    return-void
.end method

.method public t(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->h:J

    return-void
.end method

.method public u(I)V
    .registers 2

    .line 1
    iput p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->d:I

    return-void
.end method

.method public v(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->f:J

    return-void
.end method

.method public w([B)V
    .registers 2

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->g:[B

    return-void
.end method

.method public x(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->t:Z

    return-void
.end method

.method public y(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->n:Z

    return-void
.end method

.method public z(I)V
    .registers 2

    .line 1
    iput p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->o:I

    return-void
.end method
