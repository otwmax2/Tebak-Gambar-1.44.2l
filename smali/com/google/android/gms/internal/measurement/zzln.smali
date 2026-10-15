###### Class com.google.android.gms.internal.measurement.zzln (com.google.android.gms.internal.measurement.zzln)
.class final Lcom/google/android/gms/internal/measurement/zzln;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@20.1.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzlu;


# instance fields
.field private final a:Lcom/google/android/gms/internal/measurement/zzlj;

.field private final b:Lcom/google/android/gms/internal/measurement/zzml;

.field private final c:Z

.field private final d:Lcom/google/android/gms/internal/measurement/zzjp;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzml;Lcom/google/android/gms/internal/measurement/zzjp;Lcom/google/android/gms/internal/measurement/zzlj;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzln;->b:Lcom/google/android/gms/internal/measurement/zzml;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/zzjp;->c(Lcom/google/android/gms/internal/measurement/zzlj;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzln;->c:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzln;->d:Lcom/google/android/gms/internal/measurement/zzjp;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzln;->a:Lcom/google/android/gms/internal/measurement/zzlj;

    return-void
.end method

.method static j(Lcom/google/android/gms/internal/measurement/zzml;Lcom/google/android/gms/internal/measurement/zzjp;Lcom/google/android/gms/internal/measurement/zzlj;)Lcom/google/android/gms/internal/measurement/zzln;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzln;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzln;-><init>(Lcom/google/android/gms/internal/measurement/zzml;Lcom/google/android/gms/internal/measurement/zzjp;Lcom/google/android/gms/internal/measurement/zzlj;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzln;->b:Lcom/google/android/gms/internal/measurement/zzml;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzml;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzml;->b(Ljava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzln;->c:Z

    if-nez v1, :cond_f

    return v0

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzln;->d:Lcom/google/android/gms/internal/measurement/zzjp;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzjp;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzjt;

    const/4 p1, 0x0

    throw p1
.end method

.method public final b()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzln;->a:Lcom/google/android/gms/internal/measurement/zzlj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzlj;->b()Lcom/google/android/gms/internal/measurement/zzli;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzli;->m3()Lcom/google/android/gms/internal/measurement/zzlj;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/Object;)I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzln;->b:Lcom/google/android/gms/internal/measurement/zzml;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzml;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzln;->c:Z

    if-nez v1, :cond_f

    return v0

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzln;->d:Lcom/google/android/gms/internal/measurement/zzjp;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzjp;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzjt;

    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public final d(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzln;->d:Lcom/google/android/gms/internal/measurement/zzjp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzjp;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzjt;

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final e(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzln;->b:Lcom/google/android/gms/internal/measurement/zzml;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzml;->g(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzln;->d:Lcom/google/android/gms/internal/measurement/zzjp;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzjp;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final f(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzln;->b:Lcom/google/android/gms/internal/measurement/zzml;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzlw;->f(Lcom/google/android/gms/internal/measurement/zzml;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzln;->c:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzln;->d:Lcom/google/android/gms/internal/measurement/zzjp;

    .line 2
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzlw;->e(Lcom/google/android/gms/internal/measurement/zzjp;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    return-void
.end method

.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzln;->b:Lcom/google/android/gms/internal/measurement/zzml;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzml;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzln;->b:Lcom/google/android/gms/internal/measurement/zzml;

    .line 2
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/measurement/zzml;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 p1, 0x0

    return p1

    :cond_14
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzln;->c:Z

    if-nez v0, :cond_1a

    const/4 p1, 0x1

    return p1

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzln;->d:Lcom/google/android/gms/internal/measurement/zzjp;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzjp;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzjt;

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzln;->d:Lcom/google/android/gms/internal/measurement/zzjp;

    .line 5
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzjp;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzjt;

    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method public final h(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/zzio;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzkc;

    iget-object p3, p2, Lcom/google/android/gms/internal/measurement/zzkc;->zzc:Lcom/google/android/gms/internal/measurement/zzmm;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmm;->c()Lcom/google/android/gms/internal/measurement/zzmm;

    move-result-object p4

    if-eq p3, p4, :cond_c

    goto :goto_12

    .line 2
    :cond_c
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmm;->e()Lcom/google/android/gms/internal/measurement/zzmm;

    move-result-object p3

    .line 3
    iput-object p3, p2, Lcom/google/android/gms/internal/measurement/zzkc;->zzc:Lcom/google/android/gms/internal/measurement/zzmm;

    .line 4
    :goto_12
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzjz;

    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public final i(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zznd;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzln;->d:Lcom/google/android/gms/internal/measurement/zzjp;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/zzjp;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzjt;

    const/4 p1, 0x0

    .line 2
    throw p1
.end method
