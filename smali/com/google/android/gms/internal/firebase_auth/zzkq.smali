###### Class com.google.android.gms.internal.firebase_auth.zzkq (com.google.android.gms.internal.firebase_auth.zzkq)
.class final Lcom/google/android/gms/internal/firebase_auth/zzkq;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private o:I

.field private p:Z

.field private q:Ljava/util/Iterator;

.field private final synthetic r:Lcom/google/android/gms/internal/firebase_auth/zzki;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase_auth/zzki;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzkq;->r:Lcom/google/android/gms/internal/firebase_auth/zzki;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzkq;->o:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase_auth/zzki;Lcom/google/android/gms/internal/firebase_auth/zzkh;)V
    .registers 3

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzkq;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzki;)V

    return-void
.end method

.method private final a()Ljava/util/Iterator;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzkq;->q:Ljava/util/Iterator;

    if-nez v0, :cond_14

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzkq;->r:Lcom/google/android/gms/internal/firebase_auth/zzki;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_auth/zzki;->n(Lcom/google/android/gms/internal/firebase_auth/zzki;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzkq;->q:Ljava/util/Iterator;

    .line 3
    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzkq;->q:Ljava/util/Iterator;

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzkq;->o:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzkq;->r:Lcom/google/android/gms/internal/firebase_auth/zzki;

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase_auth/zzki;->h(Lcom/google/android/gms/internal/firebase_auth/zzki;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_29

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzkq;->r:Lcom/google/android/gms/internal/firebase_auth/zzki;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_auth/zzki;->n(Lcom/google/android/gms/internal/firebase_auth/zzki;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzkq;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_29

    :cond_27
    const/4 v0, 0x0

    return v0

    :cond_29
    :goto_29
    return v1
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzkq;->p:Z

    .line 2
    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzkq;->o:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzkq;->o:I

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzkq;->r:Lcom/google/android/gms/internal/firebase_auth/zzki;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_auth/zzki;->h(Lcom/google/android/gms/internal/firebase_auth/zzki;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_23

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzkq;->r:Lcom/google/android/gms/internal/firebase_auth/zzki;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_auth/zzki;->h(Lcom/google/android/gms/internal/firebase_auth/zzki;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzkq;->o:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0

    .line 4
    :cond_23
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzkq;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public final remove()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzkq;->p:Z

    if-eqz v0, :cond_2e

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzkq;->p:Z

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzkq;->r:Lcom/google/android/gms/internal/firebase_auth/zzki;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_auth/zzki;->f(Lcom/google/android/gms/internal/firebase_auth/zzki;)V

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzkq;->o:I

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzkq;->r:Lcom/google/android/gms/internal/firebase_auth/zzki;

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase_auth/zzki;->h(Lcom/google/android/gms/internal/firebase_auth/zzki;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzkq;->r:Lcom/google/android/gms/internal/firebase_auth/zzki;

    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzkq;->o:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzkq;->o:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzki;->c(Lcom/google/android/gms/internal/firebase_auth/zzki;I)Ljava/lang/Object;

    return-void

    .line 6
    :cond_26
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzkq;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    .line 7
    :cond_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() was called before next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
