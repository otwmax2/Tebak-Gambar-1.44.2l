###### Class com.google.android.gms.measurement.internal.i4 (com.google.android.gms.measurement.internal.i4)
.class final Lcom/google/android/gms/measurement/internal/i4;
.super Lcom/google/android/gms/measurement/internal/j4;
.source "com.google.android.gms:play-services-measurement@@20.1.2"


# instance fields
.field private final g:Lcom/google/android/gms/internal/measurement/zzej;

.field final synthetic h:Lcom/google/android/gms/measurement/internal/l4;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/l4;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzej;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/i4;->h:Lcom/google/android/gms/measurement/internal/l4;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/measurement/internal/j4;-><init>(Ljava/lang/String;I)V

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/i4;->g:Lcom/google/android/gms/internal/measurement/zzej;

    return-void
.end method


# virtual methods
.method final a()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/i4;->g:Lcom/google/android/gms/internal/measurement/zzej;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzej;->v()I

    move-result v0

    return v0
.end method

.method final b()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/i4;->g:Lcom/google/android/gms/internal/measurement/zzej;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzej;->H()Z

    move-result v0

    return v0
.end method

.method final c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method final k(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/zzfs;JLcom/google/android/gms/measurement/internal/h;Z)Z
    .registers 23

    move-object v0, p0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoi;->b()Z

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/i4;->h:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->v()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/j4;->a:Ljava/lang/String;

    .line 3
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzel;->Z:Lcom/google/android/gms/measurement/internal/zzek;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzaf;->y(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)Z

    move-result v1

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/i4;->g:Lcom/google/android/gms/internal/measurement/zzej;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzej;->G()Z

    move-result v2

    if-eqz v2, :cond_21

    move-object/from16 v2, p6

    iget-wide v2, v2, Lcom/google/android/gms/measurement/internal/h;->e:J

    goto :goto_23

    :cond_21
    move-wide/from16 v2, p4

    :goto_23
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/i4;->h:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 5
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v4

    .line 6
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzey;->z()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    .line 7
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_93

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/i4;->h:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 8
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v4

    .line 9
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v4

    iget v6, v0, Lcom/google/android/gms/measurement/internal/j4;->b:I

    .line 10
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/i4;->g:Lcom/google/android/gms/internal/measurement/zzej;

    .line 11
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzej;->I()Z

    move-result v7

    if-eqz v7, :cond_5c

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/i4;->g:Lcom/google/android/gms/internal/measurement/zzej;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzej;->v()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_5d

    :cond_5c
    move-object v7, v5

    :goto_5d
    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/i4;->h:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 12
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgi;->A()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v8

    iget-object v9, v0, Lcom/google/android/gms/measurement/internal/i4;->g:Lcom/google/android/gms/internal/measurement/zzej;

    .line 13
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzej;->A()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzet;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Evaluating filter. audience, filter, event"

    .line 14
    invoke-virtual {v4, v9, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzew;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/i4;->h:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 15
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v4

    .line 16
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v4

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/i4;->h:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    .line 17
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzli;->e0()Lcom/google/android/gms/measurement/internal/zzlk;

    move-result-object v6

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/i4;->g:Lcom/google/android/gms/internal/measurement/zzej;

    .line 18
    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzlk;->C(Lcom/google/android/gms/internal/measurement/zzej;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Filter definition"

    invoke-virtual {v4, v7, v6}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_93
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/i4;->g:Lcom/google/android/gms/internal/measurement/zzej;

    .line 19
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzej;->I()Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_43f

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/i4;->g:Lcom/google/android/gms/internal/measurement/zzej;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzej;->v()I

    move-result v4

    const/16 v7, 0x100

    if-le v4, v7, :cond_a8

    goto/16 :goto_43f

    .line 20
    :cond_a8
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/i4;->g:Lcom/google/android/gms/internal/measurement/zzej;

    .line 21
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzej;->E()Z

    move-result v4

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/i4;->g:Lcom/google/android/gms/internal/measurement/zzej;

    .line 22
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzej;->F()Z

    move-result v7

    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/i4;->g:Lcom/google/android/gms/internal/measurement/zzej;

    .line 23
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzej;->G()Z

    move-result v8

    const/4 v9, 0x1

    if-nez v4, :cond_c4

    if-nez v7, :cond_c4

    if-eqz v8, :cond_c2

    goto :goto_c4

    :cond_c2
    const/4 v4, 0x0

    goto :goto_c5

    :cond_c4
    :goto_c4
    const/4 v4, 0x1

    :goto_c5
    if-eqz p7, :cond_f3

    if-nez v4, :cond_f3

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/i4;->h:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    iget v2, v0, Lcom/google/android/gms/measurement/internal/j4;->b:I

    .line 26
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/i4;->g:Lcom/google/android/gms/internal/measurement/zzej;

    .line 27
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzej;->I()Z

    move-result v3

    if-eqz v3, :cond_ed

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/i4;->g:Lcom/google/android/gms/internal/measurement/zzej;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzej;->v()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_ed
    const-string v3, "Event filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID"

    .line 28
    invoke-virtual {v1, v3, v2, v5}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v9

    :cond_f3
    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/i4;->g:Lcom/google/android/gms/internal/measurement/zzej;

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzfs;->B()Ljava/lang/String;

    move-result-object v8

    .line 29
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzej;->H()Z

    move-result v10

    if-eqz v10, :cond_115

    .line 30
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzej;->z()Lcom/google/android/gms/internal/measurement/zzeq;

    move-result-object v10

    invoke-static {v2, v3, v10}, Lcom/google/android/gms/measurement/internal/j4;->h(JLcom/google/android/gms/internal/measurement/zzeq;)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_10b

    goto/16 :goto_3e1

    .line 31
    :cond_10b
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_115

    .line 32
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_3e1

    :cond_115
    new-instance v2, Ljava/util/HashSet;

    .line 33
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 34
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzej;->B()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_122
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_15f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzel;

    .line 35
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzel;->y()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_157

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/i4;->h:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 36
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    .line 37
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzey;->r()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/i4;->h:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 38
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->A()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v3

    .line 39
    invoke-virtual {v3, v8}, Lcom/google/android/gms/measurement/internal/zzet;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "null or empty param name in filter. event"

    .line 40
    invoke-virtual {v2, v7, v3}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3e1

    .line 41
    :cond_157
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzel;->y()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_122

    .line 42
    :cond_15f
    new-instance v3, Lo/a;

    invoke-direct {v3}, Lo/a;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzfs;->C()Ljava/util/List;

    move-result-object v10

    .line 43
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_16c
    :goto_16c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1ff

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzfw;

    .line 44
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfw;->A()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_16c

    .line 45
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfw;->Q()Z

    move-result v12

    if-eqz v12, :cond_1a0

    .line 46
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfw;->A()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfw;->Q()Z

    move-result v13

    if-eqz v13, :cond_19b

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfw;->x()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    goto :goto_19c

    :cond_19b
    move-object v11, v5

    :goto_19c
    invoke-interface {v3, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16c

    .line 47
    :cond_1a0
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfw;->O()Z

    move-result v12

    if-eqz v12, :cond_1be

    .line 48
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfw;->A()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfw;->O()Z

    move-result v13

    if-eqz v13, :cond_1b9

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfw;->u()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    goto :goto_1ba

    :cond_1b9
    move-object v11, v5

    .line 49
    :goto_1ba
    invoke-interface {v3, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16c

    .line 50
    :cond_1be
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfw;->S()Z

    move-result v12

    if-eqz v12, :cond_1d0

    .line 51
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfw;->A()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfw;->B()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16c

    :cond_1d0
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/i4;->h:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 52
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    .line 53
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzey;->r()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/i4;->h:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 54
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->A()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v3

    .line 55
    invoke-virtual {v3, v8}, Lcom/google/android/gms/measurement/internal/zzet;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/i4;->h:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 56
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgi;->A()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v7

    .line 57
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfw;->A()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzet;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Unknown value for param. event, param"

    .line 58
    invoke-virtual {v2, v8, v3, v7}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3e1

    .line 59
    :cond_1ff
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzej;->B()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_207
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3df

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzel;

    .line 60
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzel;->B()Z

    move-result v10

    if-eqz v10, :cond_221

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzel;->A()Z

    move-result v10

    if-eqz v10, :cond_221

    const/4 v10, 0x1

    goto :goto_222

    :cond_221
    const/4 v10, 0x0

    .line 61
    :goto_222
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzel;->y()Ljava/lang/String;

    move-result-object v11

    .line 62
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_24b

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/i4;->h:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 63
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    .line 64
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzey;->r()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/i4;->h:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 65
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->A()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v3

    .line 66
    invoke-virtual {v3, v8}, Lcom/google/android/gms/measurement/internal/zzet;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "Event has empty param name. event"

    .line 67
    invoke-virtual {v2, v7, v3}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3e1

    .line 68
    :cond_24b
    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 69
    instance-of v13, v12, Ljava/lang/Long;

    if-eqz v13, :cond_2a0

    .line 70
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzel;->C()Z

    move-result v13

    if-nez v13, :cond_284

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/i4;->h:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 71
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    .line 72
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzey;->r()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/i4;->h:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 73
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->A()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v3

    .line 74
    invoke-virtual {v3, v8}, Lcom/google/android/gms/measurement/internal/zzet;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/i4;->h:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 75
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgi;->A()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v7

    .line 76
    invoke-virtual {v7, v11}, Lcom/google/android/gms/measurement/internal/zzet;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "No number filter for long param. event, param"

    .line 77
    invoke-virtual {v2, v8, v3, v7}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3e1

    .line 78
    :cond_284
    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzel;->w()Lcom/google/android/gms/internal/measurement/zzeq;

    move-result-object v7

    invoke-static {v11, v12, v7}, Lcom/google/android/gms/measurement/internal/j4;->h(JLcom/google/android/gms/internal/measurement/zzeq;)Ljava/lang/Boolean;

    move-result-object v7

    if-nez v7, :cond_296

    goto/16 :goto_3e1

    .line 79
    :cond_296
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-ne v7, v10, :cond_207

    .line 80
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_3e1

    .line 81
    :cond_2a0
    instance-of v13, v12, Ljava/lang/Double;

    if-eqz v13, :cond_2f1

    .line 82
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzel;->C()Z

    move-result v13

    if-nez v13, :cond_2d5

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/i4;->h:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 83
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    .line 84
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzey;->r()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/i4;->h:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 85
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->A()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v3

    .line 86
    invoke-virtual {v3, v8}, Lcom/google/android/gms/measurement/internal/zzet;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/i4;->h:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 87
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgi;->A()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v7

    .line 88
    invoke-virtual {v7, v11}, Lcom/google/android/gms/measurement/internal/zzet;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "No number filter for double param. event, param"

    .line 89
    invoke-virtual {v2, v8, v3, v7}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3e1

    .line 90
    :cond_2d5
    check-cast v12, Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzel;->w()Lcom/google/android/gms/internal/measurement/zzeq;

    move-result-object v7

    invoke-static {v11, v12, v7}, Lcom/google/android/gms/measurement/internal/j4;->g(DLcom/google/android/gms/internal/measurement/zzeq;)Ljava/lang/Boolean;

    move-result-object v7

    if-nez v7, :cond_2e7

    goto/16 :goto_3e1

    .line 91
    :cond_2e7
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-ne v7, v10, :cond_207

    .line 92
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_3e1

    .line 93
    :cond_2f1
    instance-of v13, v12, Ljava/lang/String;

    if-eqz v13, :cond_387

    .line 94
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzel;->E()Z

    move-result v13

    if-eqz v13, :cond_30e

    .line 95
    check-cast v12, Ljava/lang/String;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzel;->x()Lcom/google/android/gms/internal/measurement/zzex;

    move-result-object v7

    iget-object v11, v0, Lcom/google/android/gms/measurement/internal/i4;->h:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 96
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v11

    .line 97
    invoke-static {v12, v7, v11}, Lcom/google/android/gms/measurement/internal/j4;->f(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzex;Lcom/google/android/gms/measurement/internal/zzey;)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_324

    .line 98
    :cond_30e
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzel;->C()Z

    move-result v13

    if-eqz v13, :cond_35d

    .line 99
    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/zzlk;->L(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_332

    .line 100
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzel;->w()Lcom/google/android/gms/internal/measurement/zzeq;

    move-result-object v7

    invoke-static {v12, v7}, Lcom/google/android/gms/measurement/internal/j4;->i(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzeq;)Ljava/lang/Boolean;

    move-result-object v7

    :goto_324
    if-nez v7, :cond_328

    goto/16 :goto_3e1

    .line 101
    :cond_328
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-ne v7, v10, :cond_207

    .line 102
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_3e1

    .line 103
    :cond_332
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/i4;->h:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 104
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    .line 105
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzey;->r()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/i4;->h:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 106
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->A()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v3

    .line 107
    invoke-virtual {v3, v8}, Lcom/google/android/gms/measurement/internal/zzet;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/i4;->h:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 108
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgi;->A()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v7

    .line 109
    invoke-virtual {v7, v11}, Lcom/google/android/gms/measurement/internal/zzet;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Invalid param value for number filter. event, param"

    .line 110
    invoke-virtual {v2, v8, v3, v7}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3e1

    :cond_35d
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/i4;->h:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 111
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    .line 112
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzey;->r()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/i4;->h:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 113
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->A()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v3

    .line 114
    invoke-virtual {v3, v8}, Lcom/google/android/gms/measurement/internal/zzet;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/i4;->h:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 115
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgi;->A()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v7

    .line 116
    invoke-virtual {v7, v11}, Lcom/google/android/gms/measurement/internal/zzet;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "No filter for String param. event, param"

    .line 117
    invoke-virtual {v2, v8, v3, v7}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3e1

    :cond_387
    if-nez v12, :cond_3b5

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/i4;->h:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 118
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    .line 119
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/i4;->h:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 120
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->A()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v3

    .line 121
    invoke-virtual {v3, v8}, Lcom/google/android/gms/measurement/internal/zzet;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/i4;->h:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 122
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgi;->A()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v5

    .line 123
    invoke-virtual {v5, v11}, Lcom/google/android/gms/measurement/internal/zzet;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "Missing param for filter. event, param"

    .line 124
    invoke-virtual {v2, v7, v3, v5}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3e1

    :cond_3b5
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/i4;->h:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 126
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    .line 127
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzey;->r()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/i4;->h:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 128
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->A()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v3

    .line 129
    invoke-virtual {v3, v8}, Lcom/google/android/gms/measurement/internal/zzet;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/i4;->h:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 130
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgi;->A()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v7

    .line 131
    invoke-virtual {v7, v11}, Lcom/google/android/gms/measurement/internal/zzet;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Unknown param type. event, param"

    .line 132
    invoke-virtual {v2, v8, v3, v7}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3e1

    .line 133
    :cond_3df
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 134
    :goto_3e1
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/i4;->h:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 135
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    .line 136
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    if-nez v5, :cond_3f2

    const-string v3, "null"

    goto :goto_3f3

    :cond_3f2
    move-object v3, v5

    :goto_3f3
    const-string v7, "Event filter result"

    invoke-virtual {v2, v7, v3}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v5, :cond_3fb

    return v6

    .line 137
    :cond_3fb
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/j4;->c:Ljava/lang/Boolean;

    .line 138
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_406

    return v9

    :cond_406
    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/j4;->d:Ljava/lang/Boolean;

    if-eqz v4, :cond_43e

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzfs;->O()Z

    move-result v2

    if-eqz v2, :cond_43e

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzfs;->x()J

    move-result-wide v2

    .line 139
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/i4;->g:Lcom/google/android/gms/internal/measurement/zzej;

    .line 140
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzej;->F()Z

    move-result v3

    if-eqz v3, :cond_430

    if-eqz v1, :cond_42d

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/i4;->g:Lcom/google/android/gms/internal/measurement/zzej;

    .line 141
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzej;->H()Z

    move-result v1

    if-nez v1, :cond_42b

    goto :goto_42d

    :cond_42b
    move-object/from16 v2, p1

    :cond_42d
    :goto_42d
    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/j4;->f:Ljava/lang/Long;

    goto :goto_43e

    :cond_430
    if-eqz v1, :cond_43c

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/i4;->g:Lcom/google/android/gms/internal/measurement/zzej;

    .line 142
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzej;->H()Z

    move-result v1

    if-eqz v1, :cond_43c

    move-object/from16 v2, p2

    :cond_43c
    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/j4;->e:Ljava/lang/Long;

    :cond_43e
    :goto_43e
    return v9

    .line 143
    :cond_43f
    :goto_43f
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/i4;->h:Lcom/google/android/gms/measurement/internal/l4;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 144
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    .line 145
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzey;->r()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/j4;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/i4;->g:Lcom/google/android/gms/internal/measurement/zzej;

    .line 146
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzej;->I()Z

    move-result v3

    if-eqz v3, :cond_463

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/i4;->g:Lcom/google/android/gms/internal/measurement/zzej;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzej;->v()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_463
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Invalid event filter ID. appId, id"

    .line 147
    invoke-virtual {v1, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v6
.end method
