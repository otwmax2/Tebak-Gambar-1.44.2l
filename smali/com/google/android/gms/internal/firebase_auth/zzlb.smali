###### Class com.google.android.gms.internal.firebase_auth.zzlb (com.google.android.gms.internal.firebase_auth.zzlb)
.class final Lcom/google/android/gms/internal/firebase_auth/zzlb;
.super Lcom/google/android/gms/internal/firebase_auth/zzkz;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_auth/zzkz<",
        "Lcom/google/android/gms/internal/firebase_auth/zzky;",
        "Lcom/google/android/gms/internal/firebase_auth/zzky;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzkz;-><init>()V

    return-void
.end method

.method private static i(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzky;)V
    .registers 2

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/firebase_auth/zzif;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzif;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzky;

    return-void
.end method


# virtual methods
.method final synthetic a(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzls;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzky;

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzky;->f(Lcom/google/android/gms/internal/firebase_auth/zzls;)V

    return-void
.end method

.method final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p2, Lcom/google/android/gms/internal/firebase_auth/zzky;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzlb;->i(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzky;)V

    return-void
.end method

.method final synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzif;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase_auth/zzif;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzky;

    return-object p1
.end method

.method final synthetic d(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzls;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzky;

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzky;->d(Lcom/google/android/gms/internal/firebase_auth/zzls;)V

    return-void
.end method

.method final synthetic e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzky;

    check-cast p2, Lcom/google/android/gms/internal/firebase_auth/zzky;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzky;->a()Lcom/google/android/gms/internal/firebase_auth/zzky;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzky;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    return-object p1

    .line 3
    :cond_f
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzky;->b(Lcom/google/android/gms/internal/firebase_auth/zzky;Lcom/google/android/gms/internal/firebase_auth/zzky;)Lcom/google/android/gms/internal/firebase_auth/zzky;

    move-result-object p1

    return-object p1
.end method

.method final f(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzif;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase_auth/zzif;->zzb:Lcom/google/android/gms/internal/firebase_auth/zzky;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzky;->g()V

    return-void
.end method

.method final synthetic g(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzky;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzky;->h()I

    move-result p1

    return p1
.end method

.method final synthetic h(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzky;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzky;->i()I

    move-result p1

    return p1
.end method
