###### Class com.google.android.gms.internal.drive.zzmz (com.google.android.gms.internal.drive.zzmz)
.class final Lcom/google/android/gms/internal/drive/zzmz;
.super Lcom/google/android/gms/internal/drive/zzmx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/drive/zzmx<",
        "Lcom/google/android/gms/internal/drive/zzmy;",
        "Lcom/google/android/gms/internal/drive/zzmy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzmx;-><init>()V

    return-void
.end method

.method private static i(Ljava/lang/Object;Lcom/google/android/gms/internal/drive/zzmy;)V
    .registers 2

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/drive/zzkk;

    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzkk;->zzrq:Lcom/google/android/gms/internal/drive/zzmy;

    return-void
.end method


# virtual methods
.method final synthetic a(Ljava/lang/Object;Lcom/google/android/gms/internal/drive/zzns;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/drive/zzmy;

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/drive/zzmy;->e(Lcom/google/android/gms/internal/drive/zzns;)V

    return-void
.end method

.method final synthetic b(Ljava/lang/Object;Lcom/google/android/gms/internal/drive/zzns;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/drive/zzmy;

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/drive/zzmy;->b(Lcom/google/android/gms/internal/drive/zzns;)V

    return-void
.end method

.method final c(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/drive/zzkk;

    iget-object p1, p1, Lcom/google/android/gms/internal/drive/zzkk;->zzrq:Lcom/google/android/gms/internal/drive/zzmy;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzmy;->f()V

    return-void
.end method

.method final synthetic d(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p2, Lcom/google/android/gms/internal/drive/zzmy;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/drive/zzmz;->i(Ljava/lang/Object;Lcom/google/android/gms/internal/drive/zzmy;)V

    return-void
.end method

.method final synthetic e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/drive/zzmy;

    check-cast p2, Lcom/google/android/gms/internal/drive/zzmy;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzmy;->h()Lcom/google/android/gms/internal/drive/zzmy;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/drive/zzmy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    return-object p1

    .line 3
    :cond_f
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/drive/zzmy;->a(Lcom/google/android/gms/internal/drive/zzmy;Lcom/google/android/gms/internal/drive/zzmy;)Lcom/google/android/gms/internal/drive/zzmy;

    move-result-object p1

    return-object p1
.end method

.method final synthetic f(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/drive/zzmy;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzmy;->g()I

    move-result p1

    return p1
.end method

.method final synthetic g(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/drive/zzkk;

    iget-object p1, p1, Lcom/google/android/gms/internal/drive/zzkk;->zzrq:Lcom/google/android/gms/internal/drive/zzmy;

    return-object p1
.end method

.method final synthetic h(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/drive/zzmy;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzmy;->i()I

    move-result p1

    return p1
.end method
