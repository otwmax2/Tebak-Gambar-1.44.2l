###### Class com.google.android.gms.internal.measurement.zzfr (com.google.android.gms.internal.measurement.zzfr)
.class public final Lcom/google/android/gms/internal/measurement/zzfr;
.super Lcom/google/android/gms/internal/measurement/zzjy;
.source "com.google.android.gms:play-services-measurement@@20.1.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzlk;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs;->z()Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzjy;-><init>(Lcom/google/android/gms/internal/measurement/zzkc;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzfj;)V
    .registers 2

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs;->z()Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzjy;-><init>(Lcom/google/android/gms/internal/measurement/zzkc;)V

    return-void
.end method


# virtual methods
.method public final A(ILcom/google/android/gms/internal/measurement/zzfv;)Lcom/google/android/gms/internal/measurement/zzfr;
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjy;->q:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjy;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjy;->q:Z

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjy;->p:Lcom/google/android/gms/internal/measurement/zzkc;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzjy;->o()Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzfw;

    .line 4
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzfs;->D(Lcom/google/android/gms/internal/measurement/zzfs;ILcom/google/android/gms/internal/measurement/zzfw;)V

    return-object p0
.end method

.method public final B(ILcom/google/android/gms/internal/measurement/zzfw;)Lcom/google/android/gms/internal/measurement/zzfr;
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjy;->q:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjy;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjy;->q:Z

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjy;->p:Lcom/google/android/gms/internal/measurement/zzkc;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzfs;->D(Lcom/google/android/gms/internal/measurement/zzfs;ILcom/google/android/gms/internal/measurement/zzfw;)V

    return-object p0
.end method

.method public final C(J)Lcom/google/android/gms/internal/measurement/zzfr;
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjy;->q:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjy;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjy;->q:Z

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjy;->p:Lcom/google/android/gms/internal/measurement/zzkc;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzfs;->K(Lcom/google/android/gms/internal/measurement/zzfs;J)V

    return-object p0
.end method

.method public final D(J)Lcom/google/android/gms/internal/measurement/zzfr;
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjy;->q:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjy;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjy;->q:Z

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjy;->p:Lcom/google/android/gms/internal/measurement/zzkc;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzfs;->J(Lcom/google/android/gms/internal/measurement/zzfs;J)V

    return-object p0
.end method

.method public final E(I)Lcom/google/android/gms/internal/measurement/zzfw;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjy;->p:Lcom/google/android/gms/internal/measurement/zzkc;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfs;->A(I)Lcom/google/android/gms/internal/measurement/zzfw;

    move-result-object p1

    return-object p1
.end method

.method public final F()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjy;->p:Lcom/google/android/gms/internal/measurement/zzkc;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs;->B()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final G()Ljava/util/List;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjy;->p:Lcom/google/android/gms/internal/measurement/zzkc;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs;->C()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final H()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjy;->p:Lcom/google/android/gms/internal/measurement/zzkc;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs;->O()Z

    move-result v0

    return v0
.end method

.method public final r()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjy;->p:Lcom/google/android/gms/internal/measurement/zzkc;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs;->v()I

    move-result v0

    return v0
.end method

.method public final s()J
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjy;->p:Lcom/google/android/gms/internal/measurement/zzkc;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs;->w()J

    move-result-wide v0

    return-wide v0
.end method

.method public final t()J
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjy;->p:Lcom/google/android/gms/internal/measurement/zzkc;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs;->x()J

    move-result-wide v0

    return-wide v0
.end method

.method public final u(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfr;
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjy;->q:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjy;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjy;->q:Z

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjy;->p:Lcom/google/android/gms/internal/measurement/zzkc;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfs;->F(Lcom/google/android/gms/internal/measurement/zzfs;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final v(Lcom/google/android/gms/internal/measurement/zzfv;)Lcom/google/android/gms/internal/measurement/zzfr;
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjy;->q:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjy;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjy;->q:Z

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjy;->p:Lcom/google/android/gms/internal/measurement/zzkc;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzjy;->o()Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfw;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfs;->E(Lcom/google/android/gms/internal/measurement/zzfs;Lcom/google/android/gms/internal/measurement/zzfw;)V

    return-object p0
.end method

.method public final w(Lcom/google/android/gms/internal/measurement/zzfw;)Lcom/google/android/gms/internal/measurement/zzfr;
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjy;->q:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjy;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjy;->q:Z

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjy;->p:Lcom/google/android/gms/internal/measurement/zzkc;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfs;->E(Lcom/google/android/gms/internal/measurement/zzfs;Lcom/google/android/gms/internal/measurement/zzfw;)V

    return-object p0
.end method

.method public final x()Lcom/google/android/gms/internal/measurement/zzfr;
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjy;->q:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjy;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjy;->q:Z

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjy;->p:Lcom/google/android/gms/internal/measurement/zzkc;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzfs;->G(Lcom/google/android/gms/internal/measurement/zzfs;)V

    return-object p0
.end method

.method public final y(I)Lcom/google/android/gms/internal/measurement/zzfr;
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjy;->q:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjy;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjy;->q:Z

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjy;->p:Lcom/google/android/gms/internal/measurement/zzkc;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfs;->H(Lcom/google/android/gms/internal/measurement/zzfs;I)V

    return-object p0
.end method

.method public final z(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfr;
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjy;->q:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjy;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjy;->q:Z

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjy;->p:Lcom/google/android/gms/internal/measurement/zzkc;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfs;->I(Lcom/google/android/gms/internal/measurement/zzfs;Ljava/lang/String;)V

    return-object p0
.end method
