###### Class com.google.android.gms.internal.firebase_auth.zzjc (com.google.android.gms.internal.firebase_auth.zzjc)
.class final Lcom/google/android/gms/internal/firebase_auth/zzjc;
.super Lcom/google/android/gms/internal/firebase_auth/zzix;
.source "com.google.firebase:firebase-auth@@19.3.1"


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase_auth/zzix;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzja;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase_auth/zzja;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzjc;-><init>()V

    return-void
.end method

.method private static e(Ljava/lang/Object;J)Lcom/google/android/gms/internal/firebase_auth/zzio;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Lcom/google/android/gms/internal/firebase_auth/zzio<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase_auth/zzio;

    return-object p0
.end method


# virtual methods
.method final b(Ljava/lang/Object;Ljava/lang/Object;J)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation

    .line 1
    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/firebase_auth/zzjc;->e(Ljava/lang/Object;J)Lcom/google/android/gms/internal/firebase_auth/zzio;

    move-result-object v0

    .line 2
    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/firebase_auth/zzjc;->e(Ljava/lang/Object;J)Lcom/google/android/gms/internal/firebase_auth/zzio;

    move-result-object p2

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v1, :cond_22

    if-lez v2, :cond_22

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase_auth/zzio;->zza()Z

    move-result v3

    if-nez v3, :cond_1f

    add-int/2addr v2, v1

    .line 6
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/firebase_auth/zzio;->h(I)Lcom/google/android/gms/internal/firebase_auth/zzio;

    move-result-object v0

    .line 7
    :cond_1f
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_22
    if-lez v1, :cond_25

    move-object p2, v0

    .line 8
    :cond_25
    invoke-static {p1, p3, p4, p2}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method final d(Ljava/lang/Object;J)V
    .registers 4

    .line 1
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/firebase_auth/zzjc;->e(Ljava/lang/Object;J)Lcom/google/android/gms/internal/firebase_auth/zzio;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/firebase_auth/zzio;->zzb()V

    return-void
.end method
