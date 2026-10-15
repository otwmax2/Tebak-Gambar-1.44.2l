###### Class o7.c (o7.c)
.class Lo7/c;
.super Ljava/lang/Object;
.source "C40Encoder.java"

# interfaces
.implements Lo7/g;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Lo7/h;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;I)I
    .registers 6

    .line 1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int p4, v0, p4

    .line 2
    invoke-virtual {p2, p4, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3
    iget p2, p1, Lo7/h;->f:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lo7/h;->f:I

    .line 4
    invoke-virtual {p1}, Lo7/h;->c()C

    move-result p2

    .line 5
    invoke-virtual {p0, p2, p3}, Lo7/c;->c(CLjava/lang/StringBuilder;)I

    move-result p2

    .line 6
    invoke-virtual {p1}, Lo7/h;->k()V

    return p2
.end method

.method private static d(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .registers 6

    .line 1
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    add-int/lit8 v1, p1, 0x1

    .line 2
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/4 v2, 0x2

    add-int/2addr p1, v2

    .line 3
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    mul-int/lit16 v0, v0, 0x640

    mul-int/lit8 v1, v1, 0x28

    add-int/2addr v0, v1

    add-int/2addr v0, p0

    const/4 p0, 0x1

    add-int/2addr v0, p0

    .line 4
    div-int/lit16 p1, v0, 0x100

    int-to-char p1, p1

    .line 5
    rem-int/lit16 v0, v0, 0x100

    int-to-char v0, v0

    .line 6
    new-instance v1, Ljava/lang/String;

    new-array v2, v2, [C

    const/4 v3, 0x0

    aput-char p1, v2, v3

    aput-char v0, v2, p0

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method static g(Lo7/h;Ljava/lang/StringBuilder;)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Lo7/c;->d(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lo7/h;->s(Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 2
    invoke-virtual {p1, v0, p0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public a(Lo7/h;)V
    .registers 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    :cond_5
    invoke-virtual {p1}, Lo7/h;->i()Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 3
    invoke-virtual {p1}, Lo7/h;->c()C

    move-result v1

    .line 4
    iget v2, p1, Lo7/h;->f:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p1, Lo7/h;->f:I

    .line 5
    invoke-virtual {p0, v1, v0}, Lo7/c;->c(CLjava/lang/StringBuilder;)I

    move-result v1

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v4, 0x3

    div-int/2addr v2, v4

    shl-int/2addr v2, v3

    .line 7
    invoke-virtual {p1}, Lo7/h;->a()I

    move-result v5

    add-int/2addr v5, v2

    .line 8
    invoke-virtual {p1, v5}, Lo7/h;->q(I)V

    .line 9
    invoke-virtual {p1}, Lo7/h;->g()Lo7/k;

    move-result-object v2

    invoke-virtual {v2}, Lo7/k;->a()I

    move-result v2

    sub-int/2addr v2, v5

    .line 10
    invoke-virtual {p1}, Lo7/h;->i()Z

    move-result v5

    if-nez v5, :cond_5e

    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    rem-int/2addr v6, v4

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4c

    if-lt v2, v7, :cond_48

    if-le v2, v7, :cond_4c

    .line 13
    :cond_48
    invoke-direct {p0, p1, v0, v5, v1}, Lo7/c;->b(Lo7/h;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;I)I

    move-result v1

    .line 14
    :cond_4c
    :goto_4c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    rem-int/2addr v6, v4

    if-ne v6, v3, :cond_7d

    if-gt v1, v4, :cond_57

    if-ne v2, v3, :cond_59

    :cond_57
    if-le v1, v4, :cond_7d

    .line 15
    :cond_59
    invoke-direct {p0, p1, v0, v5, v1}, Lo7/c;->b(Lo7/h;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;I)I

    move-result v1

    goto :goto_4c

    .line 16
    :cond_5e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 17
    rem-int/2addr v1, v4

    if-nez v1, :cond_5

    .line 18
    invoke-virtual {p1}, Lo7/h;->d()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lo7/h;->f:I

    invoke-virtual {p0}, Lo7/c;->e()I

    move-result v3

    invoke-static {v1, v2, v3}, Lo7/j;->n(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 19
    invoke-virtual {p0}, Lo7/c;->e()I

    move-result v2

    if-eq v1, v2, :cond_5

    const/4 v1, 0x0

    .line 20
    invoke-virtual {p1, v1}, Lo7/h;->o(I)V

    .line 21
    :cond_7d
    invoke-virtual {p0, p1, v0}, Lo7/c;->f(Lo7/h;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method c(CLjava/lang/StringBuilder;)I
    .registers 7

    const/16 v0, 0x20

    const/4 v1, 0x1

    if-ne p1, v0, :cond_a

    const/4 p1, 0x3

    .line 1
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v1

    :cond_a
    const/16 v2, 0x30

    if-lt p1, v2, :cond_1a

    const/16 v3, 0x39

    if-gt p1, v3, :cond_1a

    sub-int/2addr p1, v2

    add-int/lit8 p1, p1, 0x4

    int-to-char p1, p1

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v1

    :cond_1a
    const/16 v2, 0x41

    if-lt p1, v2, :cond_2a

    const/16 v3, 0x5a

    if-gt p1, v3, :cond_2a

    sub-int/2addr p1, v2

    add-int/lit8 p1, p1, 0xe

    int-to-char p1, p1

    .line 3
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v1

    :cond_2a
    const/4 v2, 0x2

    if-ge p1, v0, :cond_35

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v2

    :cond_35
    const/16 v0, 0x21

    if-lt p1, v0, :cond_46

    const/16 v3, 0x2f

    if-gt p1, v3, :cond_46

    .line 6
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v0

    int-to-char p1, p1

    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v2

    :cond_46
    const/16 v0, 0x3a

    if-lt p1, v0, :cond_59

    const/16 v3, 0x40

    if-gt p1, v3, :cond_59

    .line 8
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0xf

    int-to-char p1, p1

    .line 9
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v2

    :cond_59
    const/16 v0, 0x5b

    if-lt p1, v0, :cond_6c

    const/16 v3, 0x5f

    if-gt p1, v3, :cond_6c

    .line 10
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x16

    int-to-char p1, p1

    .line 11
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v2

    :cond_6c
    const/16 v0, 0x60

    if-lt p1, v0, :cond_7d

    const/16 v1, 0x7f

    if-gt p1, v1, :cond_7d

    .line 12
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v0

    int-to-char p1, p1

    .line 13
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v2

    :cond_7d
    const-string v0, "\u0001\u001e"

    .line 14
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, -0x80

    int-to-char p1, p1

    .line 15
    invoke-virtual {p0, p1, p2}, Lo7/c;->c(CLjava/lang/StringBuilder;)I

    move-result p1

    add-int/2addr p1, v2

    return p1
.end method

.method public e()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method f(Lo7/h;Ljava/lang/StringBuilder;)V
    .registers 10

    .line 1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x3

    div-int/2addr v0, v1

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    .line 2
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    rem-int/2addr v3, v1

    .line 3
    invoke-virtual {p1}, Lo7/h;->a()I

    move-result v4

    add-int/2addr v4, v0

    .line 4
    invoke-virtual {p1, v4}, Lo7/h;->q(I)V

    .line 5
    invoke-virtual {p1}, Lo7/h;->g()Lo7/k;

    move-result-object v0

    invoke-virtual {v0}, Lo7/k;->a()I

    move-result v0

    sub-int/2addr v0, v4

    const/4 v4, 0x0

    const/16 v5, 0xfe

    const/4 v6, 0x2

    if-ne v3, v6, :cond_3b

    .line 6
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    :goto_27
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lt v0, v1, :cond_31

    .line 8
    invoke-static {p1, p2}, Lo7/c;->g(Lo7/h;Ljava/lang/StringBuilder;)V

    goto :goto_27

    .line 9
    :cond_31
    invoke-virtual {p1}, Lo7/h;->i()Z

    move-result p2

    if-eqz p2, :cond_6f

    .line 10
    invoke-virtual {p1, v5}, Lo7/h;->r(C)V

    goto :goto_6f

    :cond_3b
    if-ne v0, v2, :cond_58

    if-ne v3, v2, :cond_58

    .line 11
    :goto_3f
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lt v0, v1, :cond_49

    .line 12
    invoke-static {p1, p2}, Lo7/c;->g(Lo7/h;Ljava/lang/StringBuilder;)V

    goto :goto_3f

    .line 13
    :cond_49
    invoke-virtual {p1}, Lo7/h;->i()Z

    move-result p2

    if-eqz p2, :cond_52

    .line 14
    invoke-virtual {p1, v5}, Lo7/h;->r(C)V

    .line 15
    :cond_52
    iget p2, p1, Lo7/h;->f:I

    sub-int/2addr p2, v2

    iput p2, p1, Lo7/h;->f:I

    goto :goto_6f

    :cond_58
    if-nez v3, :cond_73

    .line 16
    :goto_5a
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lt v2, v1, :cond_64

    .line 17
    invoke-static {p1, p2}, Lo7/c;->g(Lo7/h;Ljava/lang/StringBuilder;)V

    goto :goto_5a

    :cond_64
    if-gtz v0, :cond_6c

    .line 18
    invoke-virtual {p1}, Lo7/h;->i()Z

    move-result p2

    if-eqz p2, :cond_6f

    .line 19
    :cond_6c
    invoke-virtual {p1, v5}, Lo7/h;->r(C)V

    .line 20
    :cond_6f
    :goto_6f
    invoke-virtual {p1, v4}, Lo7/h;->o(I)V

    return-void

    .line 21
    :cond_73
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unexpected case. Please report!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_7c

    :goto_7b
    throw p1

    :goto_7c
    goto :goto_7b
.end method
