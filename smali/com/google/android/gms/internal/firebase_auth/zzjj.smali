###### Class com.google.android.gms.internal.firebase_auth.zzjj (com.google.android.gms.internal.firebase_auth.zzjj)
.class final Lcom/google/android/gms/internal/firebase_auth/zzjj;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/android/gms/internal/firebase_auth/zzjk;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzjh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzjh;->f()V

    return-object p1
.end method

.method public final c(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzji;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/firebase_auth/zzji<",
            "**>;"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzjf;

    .line 2
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/util/Map;
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
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzjh;

    return-object p1
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzjh;

    .line 2
    check-cast p2, Lcom/google/android/gms/internal/firebase_auth/zzjh;

    .line 3
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzjh;->h()Z

    move-result v0

    if-nez v0, :cond_14

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzjh;->d()Lcom/google/android/gms/internal/firebase_auth/zzjh;

    move-result-object p1

    .line 6
    :cond_14
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzjh;->b(Lcom/google/android/gms/internal/firebase_auth/zzjh;)V

    :cond_17
    return-object p1
.end method

.method public final f(ILjava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .line 1
    check-cast p2, Lcom/google/android/gms/internal/firebase_auth/zzjh;

    .line 2
    check-cast p3, Lcom/google/android/gms/internal/firebase_auth/zzjf;

    .line 3
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_c

    return p3

    .line 4
    :cond_c
    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase_auth/zzjh;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_1b

    return p3

    :cond_1b
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 6
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method
