###### Class com.google.android.gms.internal.drive.zzlm (com.google.android.gms.internal.drive.zzlm)
.class final Lcom/google/android/gms/internal/drive/zzlm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/drive/zzll;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/drive/zzlk;

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/drive/zzlk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzlk;->d()V

    return-object p1
.end method

.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/drive/zzlk;

    .line 2
    check-cast p2, Lcom/google/android/gms/internal/drive/zzlk;

    .line 3
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzlk;->a()Z

    move-result v0

    if-nez v0, :cond_14

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzlk;->f()Lcom/google/android/gms/internal/drive/zzlk;

    move-result-object p1

    .line 6
    :cond_14
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/drive/zzlk;->b(Lcom/google/android/gms/internal/drive/zzlk;)V

    :cond_17
    return-object p1
.end method

.method public final g(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzlj;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/drive/zzlj<",
            "**>;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method public final h(ILjava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .line 1
    check-cast p2, Lcom/google/android/gms/internal/drive/zzlk;

    .line 2
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_a

    return p3

    .line 3
    :cond_a
    invoke-virtual {p2}, Lcom/google/android/gms/internal/drive/zzlk;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_19

    return p3

    :cond_19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 5
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method
