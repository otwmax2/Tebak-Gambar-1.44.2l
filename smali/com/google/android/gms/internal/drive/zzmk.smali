###### Class com.google.android.gms.internal.drive.zzmk (com.google.android.gms.internal.drive.zzmk)
.class final Lcom/google/android/gms/internal/drive/zzmk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private o:I

.field private p:Ljava/util/Iterator;

.field private final synthetic q:Lcom/google/android/gms/internal/drive/zzmi;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/drive/zzmi;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzmk;->q:Lcom/google/android/gms/internal/drive/zzmi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/drive/zzmi;->k(Lcom/google/android/gms/internal/drive/zzmi;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/drive/zzmk;->o:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/drive/zzmi;Lcom/google/android/gms/internal/drive/zzmj;)V
    .registers 3

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/drive/zzmk;-><init>(Lcom/google/android/gms/internal/drive/zzmi;)V

    return-void
.end method

.method private final a()Ljava/util/Iterator;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzmk;->p:Ljava/util/Iterator;

    if-nez v0, :cond_14

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzmk;->q:Lcom/google/android/gms/internal/drive/zzmi;

    invoke-static {v0}, Lcom/google/android/gms/internal/drive/zzmi;->n(Lcom/google/android/gms/internal/drive/zzmi;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/drive/zzmk;->p:Ljava/util/Iterator;

    .line 3
    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzmk;->p:Ljava/util/Iterator;

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzmk;->o:I

    if-lez v0, :cond_10

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzmk;->q:Lcom/google/android/gms/internal/drive/zzmi;

    invoke-static {v1}, Lcom/google/android/gms/internal/drive/zzmi;->k(Lcom/google/android/gms/internal/drive/zzmi;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_1a

    :cond_10
    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzmk;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    return v0

    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzmk;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzmk;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0

    .line 3
    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzmk;->q:Lcom/google/android/gms/internal/drive/zzmi;

    invoke-static {v0}, Lcom/google/android/gms/internal/drive/zzmi;->k(Lcom/google/android/gms/internal/drive/zzmi;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/drive/zzmk;->o:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/drive/zzmk;->o:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public final remove()V
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
