###### Class com.google.android.gms.measurement.b (com.google.android.gms.measurement.b)
.class final Lcom/google/android/gms/measurement/b;
.super Lcom/google/android/gms/measurement/c;
.source "com.google.android.gms:play-services-measurement-impl@@20.1.2"


# instance fields
.field private final a:Lcom/google/android/gms/measurement/internal/zzio;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzio;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/c;-><init>(Lcom/google/android/gms/measurement/zzc;)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/b;->a:Lcom/google/android/gms/measurement/internal/zzio;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/b;->a:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzio;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/b;->a:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzio;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final b0(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/b;->a:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-interface {v0, p1}, Lcom/google/android/gms/measurement/internal/zzio;->b0(Ljava/lang/String;)V

    return-void
.end method

.method public final c(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/b;->a:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-interface {v0, p1}, Lcom/google/android/gms/measurement/internal/zzio;->c(Landroid/os/Bundle;)V

    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/b;->a:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzio;->d(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/b;->a:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzio;->e(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/b;->a:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/zzio;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/b;->a:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/zzio;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/b;->a:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/zzio;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/b;->a:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/zzio;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i1(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/b;->a:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-interface {v0, p1}, Lcom/google/android/gms/measurement/internal/zzio;->i1(Ljava/lang/String;)V

    return-void
.end method

.method public final o(Ljava/lang/String;)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/b;->a:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-interface {v0, p1}, Lcom/google/android/gms/measurement/internal/zzio;->o(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final zzb()J
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/b;->a:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzb()J

    move-result-wide v0

    return-wide v0
.end method
