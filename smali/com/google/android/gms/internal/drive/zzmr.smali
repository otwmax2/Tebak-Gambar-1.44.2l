###### Class com.google.android.gms.internal.drive.zzmr (com.google.android.gms.internal.drive.zzmr)
.class Lcom/google/android/gms/internal/drive/zzmr;
.super Ljava/util/AbstractSet;


# instance fields
.field private final synthetic o:Lcom/google/android/gms/internal/drive/zzmi;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/drive/zzmi;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzmr;->o:Lcom/google/android/gms/internal/drive/zzmi;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/drive/zzmi;Lcom/google/android/gms/internal/drive/zzmj;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/drive/zzmr;-><init>(Lcom/google/android/gms/internal/drive/zzmi;)V

    return-void
.end method


# virtual methods
.method public synthetic add(Ljava/lang/Object;)Z
    .registers 4

    .line 1
    check-cast p1, Ljava/util/Map$Entry;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/drive/zzmr;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzmr;->o:Lcom/google/android/gms/internal/drive/zzmi;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/drive/zzmi;->d(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_19
    const/4 p1, 0x0

    return p1
.end method

.method public clear()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzmr;->o:Lcom/google/android/gms/internal/drive/zzmi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzmi;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 4

    .line 1
    check-cast p1, Ljava/util/Map$Entry;

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzmr;->o:Lcom/google/android/gms/internal/drive/zzmi;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/drive/zzmi;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eq v0, p1, :cond_1d

    if-eqz v0, :cond_1b

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p1, 0x0

    return p1

    :cond_1d
    :goto_1d
    const/4 p1, 0x1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/drive/zzmq;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzmr;->o:Lcom/google/android/gms/internal/drive/zzmi;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/drive/zzmq;-><init>(Lcom/google/android/gms/internal/drive/zzmi;Lcom/google/android/gms/internal/drive/zzmj;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    check-cast p1, Ljava/util/Map$Entry;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/drive/zzmr;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzmr;->o:Lcom/google/android/gms/internal/drive/zzmi;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/drive/zzmi;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method public size()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzmr;->o:Lcom/google/android/gms/internal/drive/zzmi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzmi;->size()I

    move-result v0

    return v0
.end method
