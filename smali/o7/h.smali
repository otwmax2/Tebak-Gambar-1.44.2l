###### Class o7.h (o7.h)
.class final Lo7/h;
.super Ljava/lang/Object;
.source "EncoderContext.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lo7/l;

.field private c:Li7/b;

.field private d:Li7/b;

.field private final e:Ljava/lang/StringBuilder;

.field f:I

.field private g:I

.field private h:Lo7/k;

.field private i:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4
    array-length v2, v0

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_31

    .line 5
    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    const/16 v5, 0x3f

    if-ne v4, v5, :cond_2b

    .line 6
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_23

    goto :goto_2b

    .line 7
    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Message contains characters outside ISO-8859-1 encoding."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2b
    :goto_2b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 9
    :cond_31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo7/h;->a:Ljava/lang/String;

    .line 10
    sget-object v0, Lo7/l;->o:Lo7/l;

    iput-object v0, p0, Lo7/h;->b:Lo7/l;

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lo7/h;->e:Ljava/lang/StringBuilder;

    const/4 p1, -0x1

    .line 12
    iput p1, p0, Lo7/h;->g:I

    return-void
.end method

.method private h()I
    .registers 3

    .line 1
    iget-object v0, p0, Lo7/h;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lo7/h;->i:I

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 1
    iget-object v0, p0, Lo7/h;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/StringBuilder;
    .registers 2

    .line 1
    iget-object v0, p0, Lo7/h;->e:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public c()C
    .registers 3

    .line 1
    iget-object v0, p0, Lo7/h;->a:Ljava/lang/String;

    iget v1, p0, Lo7/h;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lo7/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .registers 2

    .line 1
    iget v0, p0, Lo7/h;->g:I

    return v0
.end method

.method public f()I
    .registers 3

    .line 1
    invoke-direct {p0}, Lo7/h;->h()I

    move-result v0

    iget v1, p0, Lo7/h;->f:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public g()Lo7/k;
    .registers 2

    .line 1
    iget-object v0, p0, Lo7/h;->h:Lo7/k;

    return-object v0
.end method

.method public i()Z
    .registers 3

    .line 1
    iget v0, p0, Lo7/h;->f:I

    invoke-direct {p0}, Lo7/h;->h()I

    move-result v1

    if-ge v0, v1, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public j()V
    .registers 2

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lo7/h;->g:I

    return-void
.end method

.method public k()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lo7/h;->h:Lo7/k;

    return-void
.end method

.method public l(Li7/b;Li7/b;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lo7/h;->c:Li7/b;

    .line 2
    iput-object p2, p0, Lo7/h;->d:Li7/b;

    return-void
.end method

.method public m(I)V
    .registers 2

    .line 1
    iput p1, p0, Lo7/h;->i:I

    return-void
.end method

.method public n(Lo7/l;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lo7/h;->b:Lo7/l;

    return-void
.end method

.method public o(I)V
    .registers 2

    .line 1
    iput p1, p0, Lo7/h;->g:I

    return-void
.end method

.method public p()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lo7/h;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lo7/h;->q(I)V

    return-void
.end method

.method public q(I)V
    .registers 6

    .line 1
    iget-object v0, p0, Lo7/h;->h:Lo7/k;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lo7/k;->a()I

    move-result v0

    if-le p1, v0, :cond_17

    .line 2
    :cond_a
    iget-object v0, p0, Lo7/h;->b:Lo7/l;

    iget-object v1, p0, Lo7/h;->c:Li7/b;

    iget-object v2, p0, Lo7/h;->d:Li7/b;

    const/4 v3, 0x1

    invoke-static {p1, v0, v1, v2, v3}, Lo7/k;->l(ILo7/l;Li7/b;Li7/b;Z)Lo7/k;

    move-result-object p1

    iput-object p1, p0, Lo7/h;->h:Lo7/k;

    :cond_17
    return-void
.end method

.method public r(C)V
    .registers 3

    .line 1
    iget-object v0, p0, Lo7/h;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public s(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lo7/h;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
