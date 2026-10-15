###### Class o7.b (o7.b)
.class final Lo7/b;
.super Ljava/lang/Object;
.source "Base256Encoder.java"

# interfaces
.implements Lo7/g;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static c(CI)C
    .registers 3

    mul-int/lit16 p1, p1, 0x95

    const/16 v0, 0xff

    .line 1
    rem-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    add-int/2addr p0, p1

    if-gt p0, v0, :cond_c

    int-to-char p0, p0

    return p0

    :cond_c
    add-int/lit16 p0, p0, -0x100

    int-to-char p0, p0

    return p0
.end method


# virtual methods
.method public a(Lo7/h;)V
    .registers 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    :cond_9
    invoke-virtual {p1}, Lo7/h;->i()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_33

    .line 4
    invoke-virtual {p1}, Lo7/h;->c()C

    move-result v2

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    iget v2, p1, Lo7/h;->f:I

    add-int/2addr v2, v3

    iput v2, p1, Lo7/h;->f:I

    .line 7
    invoke-virtual {p1}, Lo7/h;->d()Ljava/lang/String;

    move-result-object v2

    iget v4, p1, Lo7/h;->f:I

    invoke-virtual {p0}, Lo7/b;->b()I

    move-result v5

    invoke-static {v2, v4, v5}, Lo7/j;->n(Ljava/lang/CharSequence;II)I

    move-result v2

    .line 8
    invoke-virtual {p0}, Lo7/b;->b()I

    move-result v4

    if-eq v2, v4, :cond_9

    .line 9
    invoke-virtual {p1, v1}, Lo7/h;->o(I)V

    .line 10
    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v3

    .line 11
    invoke-virtual {p1}, Lo7/h;->a()I

    move-result v4

    add-int/2addr v4, v2

    add-int/2addr v4, v3

    .line 12
    invoke-virtual {p1, v4}, Lo7/h;->q(I)V

    .line 13
    invoke-virtual {p1}, Lo7/h;->g()Lo7/k;

    move-result-object v5

    invoke-virtual {v5}, Lo7/k;->a()I

    move-result v5

    sub-int/2addr v5, v4

    if-lez v5, :cond_4e

    const/4 v4, 0x1

    goto :goto_4f

    :cond_4e
    const/4 v4, 0x0

    .line 14
    :goto_4f
    invoke-virtual {p1}, Lo7/h;->i()Z

    move-result v5

    if-nez v5, :cond_57

    if-eqz v4, :cond_71

    :cond_57
    const/16 v4, 0xf9

    if-gt v2, v4, :cond_60

    int-to-char v2, v2

    .line 15
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_71

    :cond_60
    const/16 v5, 0x613

    if-gt v2, v5, :cond_8b

    .line 16
    div-int/lit16 v5, v2, 0xfa

    add-int/2addr v5, v4

    int-to-char v4, v5

    invoke-virtual {v0, v1, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 17
    rem-int/lit16 v2, v2, 0xfa

    int-to-char v2, v2

    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 18
    :cond_71
    :goto_71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    :goto_75
    if-ge v1, v2, :cond_8a

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    invoke-virtual {p1}, Lo7/h;->a()I

    move-result v5

    add-int/2addr v5, v3

    .line 20
    invoke-static {v4, v5}, Lo7/b;->c(CI)C

    move-result v4

    invoke-virtual {p1, v4}, Lo7/h;->r(C)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_75

    :cond_8a
    return-void

    .line 21
    :cond_8b
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Message length not in valid ranges: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_9c

    :goto_9b
    throw p1

    :goto_9c
    goto :goto_9b
.end method

.method public b()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method
