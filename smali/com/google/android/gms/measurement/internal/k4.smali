###### Class com.google.android.gms.measurement.internal.k4 (com.google.android.gms.measurement.internal.k4)
.class final Lcom/google/android/gms/measurement/internal/k4;
.super Lcom/google/android/gms/measurement/internal/j4;
.source "com.google.android.gms:play-services-measurement@@20.1.2"


# instance fields
.field private final g:Lcom/google/android/gms/internal/measurement/zzes;

.field final synthetic h:Lcom/google/android/gms/measurement/internal/l4;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/l4;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzes;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/k4;->h:Lcom/google/android/gms/measurement/internal/l4;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/measurement/internal/j4;-><init>(Ljava/lang/String;I)V

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/k4;->g:Lcom/google/android/gms/internal/measurement/zzes;

    return-void
.end method


# virtual methods
.method final a()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/k4;->g:Lcom/google/android/gms/internal/measurement/zzes;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzes;->u()I

    move-result v0

    return v0
.end method

.method final b()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method final c()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method final k(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/zzgl;Z)Z
    .registers 15

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoi;->b()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/k4;->h:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->v()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/j4;->a:Ljava/lang/String;

    .line 3
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzel;->X:Lcom/google/android/gms/measurement/internal/zzek;

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzaf;->y(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/k4;->g:Lcom/google/android/gms/internal/measurement/zzes;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzes;->A()Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/k4;->g:Lcom/google/android/gms/internal/measurement/zzes;

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzes;->B()Z

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/k4;->g:Lcom/google/android/gms/internal/measurement/zzes;

    .line 7
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzes;->C()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v1, :cond_30

    if-nez v2, :cond_30

    if-eqz v3, :cond_2e

    goto :goto_30

    :cond_2e
    const/4 v1, 0x0

    goto :goto_31

    :cond_30
    :goto_30
    const/4 v1, 0x1

    :goto_31
    const/4 v2, 0x0

    if-eqz p4, :cond_60

    if-nez v1, :cond_60

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/k4;->h:Lcom/google/android/gms/measurement/internal/l4;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    iget p2, p0, Lcom/google/android/gms/measurement/internal/j4;->b:I

    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/k4;->g:Lcom/google/android/gms/internal/measurement/zzes;

    .line 11
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzes;->D()Z

    move-result p3

    if-eqz p3, :cond_5a

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/k4;->g:Lcom/google/android/gms/internal/measurement/zzes;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzes;->u()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_5a
    const-string p3, "Property filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID"

    .line 12
    invoke-virtual {p1, p3, p2, v2}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v5

    :cond_60
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/k4;->g:Lcom/google/android/gms/internal/measurement/zzes;

    .line 13
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzes;->v()Lcom/google/android/gms/internal/measurement/zzel;

    move-result-object v6

    .line 14
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzel;->A()Z

    move-result v7

    .line 15
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzgl;->K()Z

    move-result v8

    if-eqz v8, :cond_ab

    .line 16
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzel;->C()Z

    move-result v8

    if-nez v8, :cond_99

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/k4;->h:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 17
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v6

    .line 18
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzey;->r()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/k4;->h:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 19
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgi;->A()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v7

    .line 20
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzgl;->z()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzet;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "No number filter for long property. property"

    .line 21
    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_19c

    .line 22
    :cond_99
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzgl;->v()J

    move-result-wide v8

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzel;->w()Lcom/google/android/gms/internal/measurement/zzeq;

    move-result-object v2

    invoke-static {v8, v9, v2}, Lcom/google/android/gms/measurement/internal/j4;->h(JLcom/google/android/gms/internal/measurement/zzeq;)Ljava/lang/Boolean;

    move-result-object v2

    .line 23
    invoke-static {v2, v7}, Lcom/google/android/gms/measurement/internal/j4;->j(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_19c

    .line 24
    :cond_ab
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzgl;->J()Z

    move-result v8

    if-eqz v8, :cond_ec

    .line 25
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzel;->C()Z

    move-result v8

    if-nez v8, :cond_da

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/k4;->h:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 26
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v6

    .line 27
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzey;->r()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/k4;->h:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 28
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgi;->A()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v7

    .line 29
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzgl;->z()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzet;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "No number filter for double property. property"

    .line 30
    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_19c

    .line 31
    :cond_da
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzgl;->u()D

    move-result-wide v8

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzel;->w()Lcom/google/android/gms/internal/measurement/zzeq;

    move-result-object v2

    invoke-static {v8, v9, v2}, Lcom/google/android/gms/measurement/internal/j4;->g(DLcom/google/android/gms/internal/measurement/zzeq;)Ljava/lang/Boolean;

    move-result-object v2

    .line 32
    invoke-static {v2, v7}, Lcom/google/android/gms/measurement/internal/j4;->j(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_19c

    .line 33
    :cond_ec
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzgl;->N()Z

    move-result v8

    if-eqz v8, :cond_17b

    .line 34
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzel;->E()Z

    move-result v8

    if-nez v8, :cond_162

    .line 35
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzel;->C()Z

    move-result v8

    if-nez v8, :cond_121

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/k4;->h:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 36
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v6

    .line 37
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzey;->r()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/k4;->h:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 38
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgi;->A()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v7

    .line 39
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzgl;->z()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzet;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "No string or number filter defined. property"

    .line 40
    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_19c

    .line 41
    :cond_121
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzgl;->A()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzlk;->L(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13c

    .line 42
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzgl;->A()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzel;->w()Lcom/google/android/gms/internal/measurement/zzeq;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/google/android/gms/measurement/internal/j4;->i(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzeq;)Ljava/lang/Boolean;

    move-result-object v2

    .line 43
    invoke-static {v2, v7}, Lcom/google/android/gms/measurement/internal/j4;->j(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_19c

    :cond_13c
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/k4;->h:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 44
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v6

    .line 45
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzey;->r()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/k4;->h:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 46
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgi;->A()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v7

    .line 47
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzgl;->z()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzet;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 48
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzgl;->A()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Invalid user property value for Numeric number filter. property, value"

    .line 49
    invoke-virtual {v6, v9, v7, v8}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_19c

    .line 50
    :cond_162
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzgl;->A()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzel;->x()Lcom/google/android/gms/internal/measurement/zzex;

    move-result-object v6

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/k4;->h:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 51
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v8

    .line 52
    invoke-static {v2, v6, v8}, Lcom/google/android/gms/measurement/internal/j4;->f(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzex;Lcom/google/android/gms/measurement/internal/zzey;)Ljava/lang/Boolean;

    move-result-object v2

    .line 53
    invoke-static {v2, v7}, Lcom/google/android/gms/measurement/internal/j4;->j(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_19c

    :cond_17b
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/k4;->h:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 54
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v6

    .line 55
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzey;->r()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/k4;->h:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 56
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgi;->A()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v7

    .line 57
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzgl;->z()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzet;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "User property has no value, property"

    .line 58
    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    :goto_19c
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/k4;->h:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 60
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v6

    .line 61
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v6

    if-nez v2, :cond_1ad

    const-string v7, "null"

    goto :goto_1ae

    :cond_1ad
    move-object v7, v2

    :goto_1ae
    const-string v8, "Property filter result"

    .line 62
    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v2, :cond_1b6

    return v4

    .line 63
    :cond_1b6
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/j4;->c:Ljava/lang/Boolean;

    if-eqz v3, :cond_1c4

    .line 64
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1c3

    goto :goto_1c4

    :cond_1c3
    return v5

    :cond_1c4
    :goto_1c4
    if-eqz p4, :cond_1ce

    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/k4;->g:Lcom/google/android/gms/internal/measurement/zzes;

    .line 65
    invoke-virtual {p4}, Lcom/google/android/gms/internal/measurement/zzes;->A()Z

    move-result p4

    if-eqz p4, :cond_1d0

    :cond_1ce
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/j4;->d:Ljava/lang/Boolean;

    .line 66
    :cond_1d0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_215

    if-eqz v1, :cond_215

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzgl;->L()Z

    move-result p4

    if-eqz p4, :cond_215

    .line 67
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzgl;->w()J

    move-result-wide p3

    if-eqz p1, :cond_1e8

    .line 68
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    :cond_1e8
    if-eqz v0, :cond_200

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/k4;->g:Lcom/google/android/gms/internal/measurement/zzes;

    .line 69
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzes;->A()Z

    move-result p1

    if-eqz p1, :cond_200

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/k4;->g:Lcom/google/android/gms/internal/measurement/zzes;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzes;->B()Z

    move-result p1

    if-nez p1, :cond_200

    if-eqz p2, :cond_200

    .line 70
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    :cond_200
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/k4;->g:Lcom/google/android/gms/internal/measurement/zzes;

    .line 71
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzes;->B()Z

    move-result p1

    if-eqz p1, :cond_20f

    .line 72
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/j4;->f:Ljava/lang/Long;

    goto :goto_215

    .line 73
    :cond_20f
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/j4;->e:Ljava/lang/Long;

    :cond_215
    :goto_215
    return v5
.end method
