###### Class com.google.android.gms.internal.measurement.zzjy (com.google.android.gms.internal.measurement.zzjy)
.class public Lcom/google/android/gms/internal/measurement/zzjy;
.super Lcom/google/android/gms/internal/measurement/zzik;
.source "com.google.android.gms:play-services-measurement-base@@20.1.2"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/measurement/zzkc<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/measurement/zzjy<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/measurement/zzik<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field private final o:Lcom/google/android/gms/internal/measurement/zzkc;

.field protected p:Lcom/google/android/gms/internal/measurement/zzkc;

.field protected q:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/measurement/zzkc;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzik;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjy;->o:Lcom/google/android/gms/internal/measurement/zzkc;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/zzkc;->t(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzkc;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjy;->p:Lcom/google/android/gms/internal/measurement/zzkc;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzjy;->q:Z

    return-void
.end method

.method private static final k(Lcom/google/android/gms/internal/measurement/zzkc;Lcom/google/android/gms/internal/measurement/zzkc;)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlr;->a()Lcom/google/android/gms/internal/measurement/zzlr;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzlr;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzlu;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzlu;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Lcom/google/android/gms/internal/measurement/zzlj;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjy;->o:Lcom/google/android/gms/internal/measurement/zzkc;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjy;->l()Lcom/google/android/gms/internal/measurement/zzjy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic g()Lcom/google/android/gms/internal/measurement/zzik;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjy;->l()Lcom/google/android/gms/internal/measurement/zzjy;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic h(Lcom/google/android/gms/internal/measurement/zzil;)Lcom/google/android/gms/internal/measurement/zzik;
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzkc;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzjy;->m(Lcom/google/android/gms/internal/measurement/zzkc;)Lcom/google/android/gms/internal/measurement/zzjy;

    return-object p0
.end method

.method public final bridge synthetic i([BII)Lcom/google/android/gms/internal/measurement/zzik;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzkm;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjo;->a()Lcom/google/android/gms/internal/measurement/zzjo;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p3, p2}, Lcom/google/android/gms/internal/measurement/zzjy;->n([BIILcom/google/android/gms/internal/measurement/zzjo;)Lcom/google/android/gms/internal/measurement/zzjy;

    return-object p0
.end method

.method public final bridge synthetic j([BIILcom/google/android/gms/internal/measurement/zzjo;)Lcom/google/android/gms/internal/measurement/zzik;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzkm;
        }
    .end annotation

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzjy;->n([BIILcom/google/android/gms/internal/measurement/zzjo;)Lcom/google/android/gms/internal/measurement/zzjy;

    return-object p0
.end method

.method public final l()Lcom/google/android/gms/internal/measurement/zzjy;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjy;->o:Lcom/google/android/gms/internal/measurement/zzkc;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/measurement/zzkc;->t(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzjy;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjy;->p()Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjy;->m(Lcom/google/android/gms/internal/measurement/zzkc;)Lcom/google/android/gms/internal/measurement/zzjy;

    return-object v0
.end method

.method public final m(Lcom/google/android/gms/internal/measurement/zzkc;)Lcom/google/android/gms/internal/measurement/zzjy;
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjy;->q:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjy;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjy;->q:Z

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjy;->p:Lcom/google/android/gms/internal/measurement/zzkc;

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzjy;->k(Lcom/google/android/gms/internal/measurement/zzkc;Lcom/google/android/gms/internal/measurement/zzkc;)V

    return-object p0
.end method

.method public bridge synthetic m3()Lcom/google/android/gms/internal/measurement/zzlj;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjy;->p()Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v0

    return-object v0
.end method

.method public final n([BIILcom/google/android/gms/internal/measurement/zzjo;)Lcom/google/android/gms/internal/measurement/zzjy;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzkm;
        }
    .end annotation

    .line 1
    iget-boolean p2, p0, Lcom/google/android/gms/internal/measurement/zzjy;->q:Z

    if-eqz p2, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjy;->q()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/measurement/zzjy;->q:Z

    .line 2
    :cond_a
    :try_start_a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlr;->a()Lcom/google/android/gms/internal/measurement/zzlr;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjy;->p:Lcom/google/android/gms/internal/measurement/zzkc;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 4
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzlr;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzlu;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjy;->p:Lcom/google/android/gms/internal/measurement/zzkc;

    new-instance v6, Lcom/google/android/gms/internal/measurement/zzio;

    invoke-direct {v6, p4}, Lcom/google/android/gms/internal/measurement/zzio;-><init>(Lcom/google/android/gms/internal/measurement/zzjo;)V

    const/4 v4, 0x0

    move-object v3, p1

    move v5, p3

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzlu;->h(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/zzio;)V
    :try_end_25
    .catch Lcom/google/android/gms/internal/measurement/zzkm; {:try_start_a .. :try_end_25} :catch_34
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_25} :catch_2f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_25} :catch_26

    return-object p0

    :catch_26
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Reading from byte array should not throw IOException."

    .line 5
    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 6
    :catch_2f
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkm;->f()Lcom/google/android/gms/internal/measurement/zzkm;

    move-result-object p1

    throw p1

    :catch_34
    move-exception p1

    .line 7
    throw p1
.end method

.method public final o()Lcom/google/android/gms/internal/measurement/zzkc;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjy;->p()Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/measurement/zzkc;->t(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 3
    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    if-ne v3, v1, :cond_13

    goto :goto_30

    :cond_13
    if-eqz v3, :cond_31

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlr;->a()Lcom/google/android/gms/internal/measurement/zzlr;

    move-result-object v3

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 6
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/zzlr;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzlu;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/measurement/zzlu;->d(Ljava/lang/Object;)Z

    move-result v3

    if-eq v1, v3, :cond_29

    move-object v1, v2

    goto :goto_2a

    :cond_29
    move-object v1, v0

    :goto_2a
    const/4 v4, 0x2

    .line 7
    invoke-virtual {v0, v4, v1, v2}, Lcom/google/android/gms/internal/measurement/zzkc;->t(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_31

    :goto_30
    return-object v0

    .line 8
    :cond_31
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzmk;

    .line 9
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzmk;-><init>(Lcom/google/android/gms/internal/measurement/zzlj;)V

    .line 10
    throw v1
.end method

.method public p()Lcom/google/android/gms/internal/measurement/zzkc;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjy;->q:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjy;->p:Lcom/google/android/gms/internal/measurement/zzkc;

    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjy;->p:Lcom/google/android/gms/internal/measurement/zzkc;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlr;->a()Lcom/google/android/gms/internal/measurement/zzlr;

    move-result-object v1

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzlr;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzlu;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/measurement/zzlu;->e(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjy;->q:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjy;->p:Lcom/google/android/gms/internal/measurement/zzkc;

    return-object v0
.end method

.method protected q()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjy;->p:Lcom/google/android/gms/internal/measurement/zzkc;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/measurement/zzkc;->t(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzkc;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjy;->p:Lcom/google/android/gms/internal/measurement/zzkc;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjy;->k(Lcom/google/android/gms/internal/measurement/zzkc;Lcom/google/android/gms/internal/measurement/zzkc;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjy;->p:Lcom/google/android/gms/internal/measurement/zzkc;

    return-void
.end method
