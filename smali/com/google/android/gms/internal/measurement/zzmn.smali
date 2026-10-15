###### Class com.google.android.gms.internal.measurement.zzmn (com.google.android.gms.internal.measurement.zzmn)
.class final Lcom/google/android/gms/internal/measurement/zzmn;
.super Lcom/google/android/gms/internal/measurement/zzml;
.source "com.google.android.gms:play-services-measurement-base@@20.1.2"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzml;-><init>()V

    return-void
.end method


# virtual methods
.method final synthetic a(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzmm;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzmm;->a()I

    move-result p1

    return p1
.end method

.method final synthetic b(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzmm;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzmm;->b()I

    move-result p1

    return p1
.end method

.method final synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzkc;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzkc;->zzc:Lcom/google/android/gms/internal/measurement/zzmm;

    return-object p1
.end method

.method final bridge synthetic d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmm;->c()Lcom/google/android/gms/internal/measurement/zzmm;

    move-result-object v0

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzmm;

    .line 1
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzmm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-object p1

    :cond_d
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzmm;

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzmm;->d(Lcom/google/android/gms/internal/measurement/zzmm;Lcom/google/android/gms/internal/measurement/zzmm;)Lcom/google/android/gms/internal/measurement/zzmm;

    move-result-object p1

    return-object p1
.end method

.method final synthetic e()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmm;->e()Lcom/google/android/gms/internal/measurement/zzmm;

    move-result-object v0

    return-object v0
.end method

.method final bridge synthetic f(Ljava/lang/Object;IJ)V
    .registers 5

    .line 1
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzmm;

    shl-int/lit8 p2, p2, 0x3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzmm;->h(ILjava/lang/Object;)V

    return-void
.end method

.method final g(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzkc;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzkc;->zzc:Lcom/google/android/gms/internal/measurement/zzmm;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzmm;->f()V

    return-void
.end method

.method final synthetic h(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzmm;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzkc;

    .line 1
    iput-object p2, p1, Lcom/google/android/gms/internal/measurement/zzkc;->zzc:Lcom/google/android/gms/internal/measurement/zzmm;

    return-void
.end method

.method final synthetic i(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zznd;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzmm;

    .line 1
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzmm;->i(Lcom/google/android/gms/internal/measurement/zznd;)V

    return-void
.end method
