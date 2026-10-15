###### Class com.google.android.gms.internal.ads.zzgqi (com.google.android.gms.internal.ads.zzgqi)
.class public Lcom/google/android/gms/internal/ads/zzgqi;
.super Lcom/google/android/gms/internal/ads/zzgom;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ads/zzgqm<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/ads/zzgqi<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/ads/zzgom<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field private final o:Lcom/google/android/gms/internal/ads/zzgqm;

.field protected p:Lcom/google/android/gms/internal/ads/zzgqm;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/zzgqm;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgom;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgqi;->o:Lcom/google/android/gms/internal/ads/zzgqm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgqm;->D()Z

    move-result v0

    if-nez v0, :cond_12

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgqm;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgqi;->p:Lcom/google/android/gms/internal/ads/zzgqm;

    return-void

    .line 3
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Default instance must be immutable."

    .line 4
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static g(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgse;->a()Lcom/google/android/gms/internal/ads/zzgse;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgse;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgsp;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgsp;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgqi;->h()Lcom/google/android/gms/internal/ads/zzgqi;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic f()Lcom/google/android/gms/internal/ads/zzgom;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgqi;->h()Lcom/google/android/gms/internal/ads/zzgqi;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic f1()Lcom/google/android/gms/internal/ads/zzgrw;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgqi;->l()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lcom/google/android/gms/internal/ads/zzgqi;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgqi;->o:Lcom/google/android/gms/internal/ads/zzgqm;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzgqm;->F(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzgqi;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgqi;->l()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzgqi;->p:Lcom/google/android/gms/internal/ads/zzgqm;

    return-object v0
.end method

.method public final i(Lcom/google/android/gms/internal/ads/zzgqm;)Lcom/google/android/gms/internal/ads/zzgqi;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgqi;->o:Lcom/google/android/gms/internal/ads/zzgqm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgqm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgqi;->p:Lcom/google/android/gms/internal/ads/zzgqm;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqm;->D()Z

    move-result v0

    if-nez v0, :cond_13

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgqi;->n()V

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgqi;->p:Lcom/google/android/gms/internal/ads/zzgqm;

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgqi;->g(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    return-object p0
.end method

.method public final j([BIILcom/google/android/gms/internal/ads/zzgpy;)Lcom/google/android/gms/internal/ads/zzgqi;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgqy;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgqi;->p:Lcom/google/android/gms/internal/ads/zzgqm;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgqm;->D()Z

    move-result p2

    if-nez p2, :cond_b

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgqi;->n()V

    .line 3
    :cond_b
    :try_start_b
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgse;->a()Lcom/google/android/gms/internal/ads/zzgse;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgqi;->p:Lcom/google/android/gms/internal/ads/zzgqm;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 5
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzgse;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgsp;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgqi;->p:Lcom/google/android/gms/internal/ads/zzgqm;

    const/4 v4, 0x0

    new-instance v6, Lcom/google/android/gms/internal/ads/zzgoq;

    invoke-direct {v6, p4}, Lcom/google/android/gms/internal/ads/zzgoq;-><init>(Lcom/google/android/gms/internal/ads/zzgpy;)V

    move-object v3, p1

    move v5, p3

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgsp;->h(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/zzgoq;)V
    :try_end_26
    .catch Lcom/google/android/gms/internal/ads/zzgqy; {:try_start_b .. :try_end_26} :catch_35
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_26} :catch_30
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_26} :catch_27

    return-object p0

    :catch_27
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Reading from byte array should not throw IOException."

    .line 6
    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 7
    :catch_30
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqy;->j()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object p1

    throw p1

    :catch_35
    move-exception p1

    .line 8
    throw p1
.end method

.method public final k()Lcom/google/android/gms/internal/ads/zzgqm;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgqi;->l()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqm;->C()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    :cond_b
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgtf;

    .line 3
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzgtf;-><init>(Lcom/google/android/gms/internal/ads/zzgrw;)V

    .line 4
    throw v1
.end method

.method public l()Lcom/google/android/gms/internal/ads/zzgqm;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgqi;->p:Lcom/google/android/gms/internal/ads/zzgqm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqm;->D()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgqi;->p:Lcom/google/android/gms/internal/ads/zzgqm;

    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgqi;->p:Lcom/google/android/gms/internal/ads/zzgqm;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqm;->y()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgqi;->p:Lcom/google/android/gms/internal/ads/zzgqm;

    return-object v0
.end method

.method protected final m()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgqi;->p:Lcom/google/android/gms/internal/ads/zzgqm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqm;->D()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgqi;->n()V

    :cond_b
    return-void
.end method

.method protected n()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgqi;->o:Lcom/google/android/gms/internal/ads/zzgqm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqm;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgqi;->p:Lcom/google/android/gms/internal/ads/zzgqm;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgqi;->g(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgqi;->p:Lcom/google/android/gms/internal/ads/zzgqm;

    return-void
.end method
