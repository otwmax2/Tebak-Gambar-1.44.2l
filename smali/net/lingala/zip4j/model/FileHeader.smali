###### Class net.lingala.zip4j.model.FileHeader (net.lingala.zip4j.model.FileHeader)
.class public Lnet/lingala/zip4j/model/FileHeader;
.super Ljava/lang/Object;
.source "FileHeader.java"


# instance fields
.field private A:Z

.field private a:I

.field private b:I

.field private c:I

.field private d:[B

.field private e:I

.field private f:I

.field private g:J

.field private h:[B

.field private i:J

.field private j:J

.field private k:I

.field private l:I

.field private m:I

.field private n:[B

.field private o:[B

.field private p:J

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Z

.field private t:Z

.field private u:I

.field private v:[C

.field private w:Z

.field private x:Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

.field private y:Lnet/lingala/zip4j/model/AESExtraDataRecord;

.field private z:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lnet/lingala/zip4j/model/FileHeader;->u:I

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lnet/lingala/zip4j/model/FileHeader;->g:J

    .line 4
    iput-wide v0, p0, Lnet/lingala/zip4j/model/FileHeader;->j:J

    return-void
.end method


# virtual methods
.method public A(I)V
    .registers 2

    .line 1
    iput p1, p0, Lnet/lingala/zip4j/model/FileHeader;->e:I

    return-void
.end method

.method public B(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lnet/lingala/zip4j/model/FileHeader;->g:J

    return-void
.end method

.method public C([B)V
    .registers 2

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/model/FileHeader;->h:[B

    return-void
.end method

.method public D(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/FileHeader;->w:Z

    return-void
.end method

.method public E(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/FileHeader;->s:Z

    return-void
.end method

.method public F(I)V
    .registers 2

    .line 1
    iput p1, p0, Lnet/lingala/zip4j/model/FileHeader;->m:I

    return-void
.end method

.method public G(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/FileHeader;->t:Z

    return-void
.end method

.method public H(I)V
    .registers 2

    .line 1
    iput p1, p0, Lnet/lingala/zip4j/model/FileHeader;->u:I

    return-void
.end method

.method public I([B)V
    .registers 2

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/model/FileHeader;->o:[B

    return-void
.end method

.method public J(Ljava/util/ArrayList;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/model/FileHeader;->z:Ljava/util/ArrayList;

    return-void
.end method

.method public K(I)V
    .registers 2

    .line 1
    iput p1, p0, Lnet/lingala/zip4j/model/FileHeader;->l:I

    return-void
.end method

.method public L(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/model/FileHeader;->r:Ljava/lang/String;

    return-void
.end method

.method public M(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/model/FileHeader;->q:Ljava/lang/String;

    return-void
.end method

.method public N(I)V
    .registers 2

    .line 1
    iput p1, p0, Lnet/lingala/zip4j/model/FileHeader;->k:I

    return-void
.end method

.method public O(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/FileHeader;->A:Z

    return-void
.end method

.method public P([B)V
    .registers 2

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/model/FileHeader;->d:[B

    return-void
.end method

.method public Q([B)V
    .registers 2

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/model/FileHeader;->n:[B

    return-void
.end method

.method public R(I)V
    .registers 2

    .line 1
    iput p1, p0, Lnet/lingala/zip4j/model/FileHeader;->f:I

    return-void
.end method

.method public S(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lnet/lingala/zip4j/model/FileHeader;->p:J

    return-void
.end method

.method public T([C)V
    .registers 2

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/model/FileHeader;->v:[C

    return-void
.end method

.method public U(I)V
    .registers 2

    .line 1
    iput p1, p0, Lnet/lingala/zip4j/model/FileHeader;->a:I

    return-void
.end method

.method public V(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lnet/lingala/zip4j/model/FileHeader;->j:J

    return-void
.end method

.method public W(I)V
    .registers 2

    .line 1
    iput p1, p0, Lnet/lingala/zip4j/model/FileHeader;->b:I

    return-void
.end method

.method public X(I)V
    .registers 2

    .line 1
    iput p1, p0, Lnet/lingala/zip4j/model/FileHeader;->c:I

    return-void
.end method

.method public Y(Lnet/lingala/zip4j/model/Zip64ExtendedInfo;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/model/FileHeader;->x:Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    return-void
.end method

.method public a()Lnet/lingala/zip4j/model/AESExtraDataRecord;
    .registers 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/FileHeader;->y:Lnet/lingala/zip4j/model/AESExtraDataRecord;

    return-object v0
.end method

.method public b()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lnet/lingala/zip4j/model/FileHeader;->i:J

    return-wide v0
.end method

.method public c()I
    .registers 2

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/model/FileHeader;->e:I

    return v0
.end method

.method public d()J
    .registers 5

    .line 1
    iget-wide v0, p0, Lnet/lingala/zip4j/model/FileHeader;->g:J

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public e()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/FileHeader;->h:[B

    return-object v0
.end method

.method public f()I
    .registers 2

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/model/FileHeader;->m:I

    return v0
.end method

.method public g()I
    .registers 2

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/model/FileHeader;->u:I

    return v0
.end method

.method public h()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/FileHeader;->o:[B

    return-object v0
.end method

.method public i()Ljava/util/ArrayList;
    .registers 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/FileHeader;->z:Ljava/util/ArrayList;

    return-object v0
.end method

.method public j()I
    .registers 2

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/model/FileHeader;->l:I

    return v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/FileHeader;->q:Ljava/lang/String;

    return-object v0
.end method

.method public l()I
    .registers 2

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/model/FileHeader;->k:I

    return v0
.end method

.method public m()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/FileHeader;->d:[B

    return-object v0
.end method

.method public n()I
    .registers 2

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/model/FileHeader;->f:I

    return v0
.end method

.method public o()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lnet/lingala/zip4j/model/FileHeader;->p:J

    return-wide v0
.end method

.method public p()[C
    .registers 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/FileHeader;->v:[C

    return-object v0
.end method

.method public q()I
    .registers 2

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/model/FileHeader;->a:I

    return v0
.end method

.method public r()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lnet/lingala/zip4j/model/FileHeader;->j:J

    return-wide v0
.end method

.method public s()I
    .registers 2

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/model/FileHeader;->b:I

    return v0
.end method

.method public t()I
    .registers 2

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/model/FileHeader;->c:I

    return v0
.end method

.method public u()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    .registers 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/FileHeader;->x:Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    return-object v0
.end method

.method public v()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/FileHeader;->s:Z

    return v0
.end method

.method public w()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/FileHeader;->t:Z

    return v0
.end method

.method public x()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/FileHeader;->A:Z

    return v0
.end method

.method public y(Lnet/lingala/zip4j/model/AESExtraDataRecord;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/model/FileHeader;->y:Lnet/lingala/zip4j/model/AESExtraDataRecord;

    return-void
.end method

.method public z(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lnet/lingala/zip4j/model/FileHeader;->i:J

    return-void
.end method
