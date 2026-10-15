###### Class j5.n (j5.n)
.class public final Lj5/n;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"


# direct methods
.method public static a(Lcom/google/android/gms/internal/firebase_auth/zzfh;)Lg5/z;
    .registers 9

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzfh;->V3()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 2
    new-instance v0, Lg5/g0;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzfh;->W3()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzfh;->X3()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzfh;->Y3()J

    move-result-wide v5

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzfh;->V3()Ljava/lang/String;

    move-result-object v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lg5/g0;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    :cond_24
    return-object v0
.end method

.method public static b(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase_auth/zzfh;",
            ">;)",
            "Ljava/util/List<",
            "Lg5/z;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_29

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_29

    .line 2
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase_auth/zzfh;

    .line 4
    invoke-static {v1}, Lj5/n;->a(Lcom/google/android/gms/internal/firebase_auth/zzfh;)Lg5/z;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_28
    return-object v0

    .line 6
    :cond_29
    :goto_29
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzbg;->m()Lcom/google/android/gms/internal/firebase_auth/zzbg;

    move-result-object p0

    return-object p0
.end method
