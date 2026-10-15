###### Class da.a2 (da.a2)
.class public Lda/a2;
.super Lda/e2;
.source "JobSupport.kt"

# interfaces
.implements Lda/y;


# instance fields
.field private final p:Z


# direct methods
.method public constructor <init>(Lda/x1;)V
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lda/e2;-><init>(Z)V

    .line 2
    invoke-virtual {p0, p1}, Lda/e2;->h0(Lda/x1;)V

    .line 3
    invoke-direct {p0}, Lda/a2;->J0()Z

    move-result p1

    iput-boolean p1, p0, Lda/a2;->p:Z

    return-void
.end method

.method private final J0()Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Lda/e2;->d0()Lda/s;

    move-result-object v0

    instance-of v1, v0, Lda/t;

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    check-cast v0, Lda/t;

    goto :goto_d

    :cond_c
    move-object v0, v2

    :goto_d
    const/4 v1, 0x0

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Lda/d2;->D()Lda/e2;

    move-result-object v0

    if-nez v0, :cond_17

    goto :goto_33

    .line 2
    :cond_17
    invoke-virtual {v0}, Lda/e2;->a0()Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v0, 0x1

    return v0

    .line 3
    :cond_1f
    invoke-virtual {v0}, Lda/e2;->d0()Lda/s;

    move-result-object v0

    instance-of v3, v0, Lda/t;

    if-eqz v3, :cond_2a

    check-cast v0, Lda/t;

    goto :goto_2b

    :cond_2a
    move-object v0, v2

    :goto_2b
    if-eqz v0, :cond_33

    invoke-virtual {v0}, Lda/d2;->D()Lda/e2;

    move-result-object v0

    if-nez v0, :cond_17

    :cond_33
    :goto_33
    return v1
.end method


# virtual methods
.method public a0()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lda/a2;->p:Z

    return v0
.end method

.method public b0()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
