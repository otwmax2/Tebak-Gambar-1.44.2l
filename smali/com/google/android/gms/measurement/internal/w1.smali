###### Class com.google.android.gms.measurement.internal.w1 (com.google.android.gms.measurement.internal.w1)
.class final Lcom/google/android/gms/measurement/internal/w1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@20.1.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Z

.field final synthetic p:Landroid/net/Uri;

.field final synthetic q:Ljava/lang/String;

.field final synthetic r:Ljava/lang/String;

.field final synthetic s:Lcom/google/android/gms/measurement/internal/x1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/x1;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/w1;->s:Lcom/google/android/gms/measurement/internal/x1;

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/w1;->o:Z

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/w1;->p:Landroid/net/Uri;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/w1;->q:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/w1;->r:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 18

    move-object/from16 v1, p0

    .line 1
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/w1;->s:Lcom/google/android/gms/measurement/internal/x1;

    iget-boolean v0, v1, Lcom/google/android/gms/measurement/internal/w1;->o:Z

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/w1;->p:Landroid/net/Uri;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/w1;->q:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/w1;->r:Ljava/lang/String;

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/x1;->o:Lcom/google/android/gms/measurement/internal/zzin;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    :try_start_11
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/x1;->o:Lcom/google/android/gms/measurement/internal/zzin;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 2
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgi;->L()Lcom/google/android/gms/measurement/internal/zzlp;

    move-result-object v6

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznw;->b()Z

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/x1;->o:Lcom/google/android/gms/measurement/internal/zzin;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 4
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgi;->v()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v7

    .line 5
    sget-object v8, Lcom/google/android/gms/measurement/internal/zzel;->x0:Lcom/google/android/gms/measurement/internal/zzek;

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v8}, Lcom/google/android/gms/measurement/internal/zzaf;->y(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)Z

    move-result v7

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznw;->b()Z

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/x1;->o:Lcom/google/android/gms/measurement/internal/zzin;

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 7
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzgi;->v()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v10

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzel;->y0:Lcom/google/android/gms/measurement/internal/zzek;

    .line 8
    invoke-virtual {v10, v9, v11}, Lcom/google/android/gms/measurement/internal/zzaf;->y(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)Z

    move-result v10

    .line 9
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12
    :try_end_40
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_40} :catch_1b2

    const-string v13, "Activity created with data \'referrer\' without required params"

    const-string v14, "utm_medium"

    const-string v15, "_cis"

    const-string v9, "utm_source"

    const-string v1, "utm_campaign"

    move-object/from16 v16, v4

    const-string v4, "gclid"

    if-eqz v12, :cond_52

    :goto_50
    const/4 v6, 0x0

    goto :goto_ac

    .line 10
    :cond_52
    :try_start_52
    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_97

    .line 11
    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_97

    .line 12
    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_97

    .line 13
    invoke-virtual {v5, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_97

    if-eqz v7, :cond_7c

    const-string v12, "utm_id"

    .line 14
    invoke-virtual {v5, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_97

    const-string v12, "dclid"

    invoke-virtual {v5, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_97

    :cond_7c
    if-eqz v10, :cond_89

    const-string v10, "srsltid"

    .line 15
    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_87

    goto :goto_89

    :cond_87
    const/4 v10, 0x1

    goto :goto_97

    :cond_89
    :goto_89
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 16
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v6

    .line 17
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzey;->l()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v6

    invoke-virtual {v6, v13}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    goto :goto_50

    :cond_97
    :goto_97
    const-string v12, "https://google.com/search?"

    invoke-virtual {v12, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 18
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 19
    invoke-virtual {v6, v12, v7, v10}, Lcom/google/android/gms/measurement/internal/zzlp;->t0(Landroid/net/Uri;ZZ)Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_ac

    const-string v7, "referrer"

    .line 20
    invoke-virtual {v6, v15, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ac
    .catch Ljava/lang/RuntimeException; {:try_start_52 .. :try_end_ac} :catch_1b2

    :cond_ac
    :goto_ac
    const-string v7, "_cmp"

    if-eqz v0, :cond_115

    .line 21
    :try_start_b0
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/x1;->o:Lcom/google/android/gms/measurement/internal/zzin;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->L()Lcom/google/android/gms/measurement/internal/zzlp;

    move-result-object v0

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznw;->b()Z

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/x1;->o:Lcom/google/android/gms/measurement/internal/zzin;

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 24
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzgi;->v()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v10

    const/4 v12, 0x0

    .line 25
    invoke-virtual {v10, v12, v8}, Lcom/google/android/gms/measurement/internal/zzaf;->y(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)Z

    move-result v8

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznw;->b()Z

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/x1;->o:Lcom/google/android/gms/measurement/internal/zzin;

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 27
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzgi;->v()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v10

    const/4 v12, 0x0

    .line 28
    invoke-virtual {v10, v12, v11}, Lcom/google/android/gms/measurement/internal/zzaf;->y(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)Z

    move-result v10

    .line 29
    invoke-virtual {v0, v3, v8, v10}, Lcom/google/android/gms/measurement/internal/zzlp;->t0(Landroid/net/Uri;ZZ)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_115

    const-string v3, "intent"

    .line 30
    invoke-virtual {v0, v15, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_106

    if-eqz v6, :cond_106

    .line 32
    invoke-virtual {v6, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_106

    const/4 v3, 0x1

    new-array v8, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 33
    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v3

    const-string v3, "_cer"

    const-string v10, "gclid=%s"

    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 34
    invoke-virtual {v0, v3, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_106
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/x1;->o:Lcom/google/android/gms/measurement/internal/zzin;

    move-object/from16 v8, v16

    .line 35
    invoke-virtual {v3, v8, v7, v0}, Lcom/google/android/gms/measurement/internal/zzin;->q(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/x1;->o:Lcom/google/android/gms/measurement/internal/zzin;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzin;->n:Lcom/google/android/gms/measurement/internal/zzr;

    .line 36
    invoke-virtual {v3, v8, v0}, Lcom/google/android/gms/measurement/internal/zzr;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_117

    :cond_115
    move-object/from16 v8, v16

    .line 37
    :goto_117
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11f

    goto/16 :goto_1a1

    :cond_11f
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/x1;->o:Lcom/google/android/gms/measurement/internal/zzin;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 38
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->l()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    const-string v3, "Activity created with referrer"

    invoke-virtual {v0, v3, v5}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/x1;->o:Lcom/google/android/gms/measurement/internal/zzin;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 40
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->v()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzel;->b0:Lcom/google/android/gms/measurement/internal/zzek;

    const/4 v10, 0x0

    .line 41
    invoke-virtual {v0, v10, v3}, Lcom/google/android/gms/measurement/internal/zzaf;->y(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)Z

    move-result v0
    :try_end_13f
    .catch Ljava/lang/RuntimeException; {:try_start_b0 .. :try_end_13f} :catch_1b2

    const-string v3, "_ldl"

    const-string v10, "auto"

    if-eqz v0, :cond_16d

    if-eqz v6, :cond_154

    :try_start_147
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/x1;->o:Lcom/google/android/gms/measurement/internal/zzin;

    .line 42
    invoke-virtual {v0, v8, v7, v6}, Lcom/google/android/gms/measurement/internal/zzin;->q(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/x1;->o:Lcom/google/android/gms/measurement/internal/zzin;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzin;->n:Lcom/google/android/gms/measurement/internal/zzr;

    .line 43
    invoke-virtual {v0, v8, v6}, Lcom/google/android/gms/measurement/internal/zzr;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_165

    .line 44
    :cond_154
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/x1;->o:Lcom/google/android/gms/measurement/internal/zzin;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 45
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->l()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    const-string v1, "Referrer does not contain valid parameters"

    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    :goto_165
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/x1;->o:Lcom/google/android/gms/measurement/internal/zzin;

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 48
    invoke-virtual {v0, v10, v3, v4, v1}, Lcom/google/android/gms/measurement/internal/zzin;->K(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void

    .line 49
    :cond_16d
    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a2

    .line 50
    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_195

    .line 51
    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_195

    .line 52
    invoke-virtual {v5, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_195

    const-string v0, "utm_term"

    .line 53
    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_195

    const-string v0, "utm_content"

    .line 54
    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a2

    .line 55
    :cond_195
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a1

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/x1;->o:Lcom/google/android/gms/measurement/internal/zzin;

    const/4 v1, 0x1

    .line 56
    invoke-virtual {v0, v10, v3, v5, v1}, Lcom/google/android/gms/measurement/internal/zzin;->K(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    :cond_1a1
    :goto_1a1
    return-void

    :cond_1a2
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/x1;->o:Lcom/google/android/gms/measurement/internal/zzin;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 57
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->l()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V
    :try_end_1b1
    .catch Ljava/lang/RuntimeException; {:try_start_147 .. :try_end_1b1} :catch_1b2

    return-void

    :catch_1b2
    move-exception v0

    .line 59
    iget-object v1, v2, Lcom/google/android/gms/measurement/internal/x1;->o:Lcom/google/android/gms/measurement/internal/zzin;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 60
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    .line 61
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    const-string v2, "Throwable caught in handleReferrerForOnActivityCreated"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
