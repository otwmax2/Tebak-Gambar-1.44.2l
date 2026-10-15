###### Class com.google.android.gms.internal.ads.zzbpx (com.google.android.gms.internal.ads.zzbpx)
.class public final Lcom/google/android/gms/internal/ads/zzbpx;
.super Lcom/google/android/gms/internal/ads/zzbqf;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final c:Ljava/util/Map;

.field private final d:Landroid/content/Context;

.field private final e:Ljava/lang/String;

.field private final f:J

.field private final g:J

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcei;Ljava/util/Map;)V
    .registers 4

    const-string v0, "createCalendarEvent"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbqf;-><init>(Lcom/google/android/gms/internal/ads/zzcei;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbpx;->c:Ljava/util/Map;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcei;->g()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpx;->d:Landroid/content/Context;

    const-string p1, "description"

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbpx;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpx;->e:Ljava/lang/String;

    const-string p1, "summary"

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbpx;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpx;->h:Ljava/lang/String;

    const-string p1, "start_ticks"

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbpx;->k(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzbpx;->f:J

    const-string p1, "end_ticks"

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbpx;->k(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzbpx;->g:J

    const-string p1, "location"

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbpx;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpx;->i:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic h(Lcom/google/android/gms/internal/ads/zzbpx;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbpx;->d:Landroid/content/Context;

    return-object p0
.end method

.method private final k(Ljava/lang/String;)J
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpx;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-wide/16 v0, -0x1

    if-nez p1, :cond_d

    return-wide v0

    .line 2
    :cond_d
    :try_start_d
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_11} :catch_11

    :catch_11
    return-wide v0
.end method

.method private final l(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpx;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string p1, ""

    goto :goto_19

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpx;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_19
    return-object p1
.end method


# virtual methods
.method final i()Landroid/content/Intent;
    .registers 7

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbpx;->e:Ljava/lang/String;

    const-string v2, "title"

    .line 2
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbpx;->i:Ljava/lang/String;

    const-string v2, "eventLocation"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbpx;->h:Ljava/lang/String;

    const-string v2, "description"

    .line 4
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzbpx;->f:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-lez v5, :cond_2f

    const-string v5, "beginTime"

    .line 5
    invoke-virtual {v0, v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_2f
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzbpx;->g:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_3a

    const-string v3, "endTime"

    .line 6
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_3a
    const/high16 v1, 0x10000000

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public final j()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpx;->d:Landroid/content/Context;

    if-nez v0, :cond_a

    const-string v0, "Activity context is not available."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbqf;->c(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_a
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpx;->d:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbab;

    .line 3
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzbab;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbab;->b()Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "This feature is not available on the device."

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbqf;->c(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_20
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpx;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzs;->g(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbyj;->d()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_3a

    .line 8
    sget v2, Lcom/google/android/gms/ads/impl/R$string;->o:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3c

    :cond_3a
    const-string v2, "Create calendar event"

    :goto_3c
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz v1, :cond_48

    .line 9
    sget v2, Lcom/google/android/gms/ads/impl/R$string;->p:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4a

    :cond_48
    const-string v2, "Allow Ad to create a calendar event?"

    :goto_4a
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz v1, :cond_56

    .line 10
    sget v2, Lcom/google/android/gms/ads/impl/R$string;->m:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_58

    :cond_56
    const-string v2, "Accept"

    :goto_58
    new-instance v3, Lcom/google/android/gms/internal/ads/zzbpv;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzbpv;-><init>(Lcom/google/android/gms/internal/ads/zzbpx;)V

    .line 11
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    if-eqz v1, :cond_69

    .line 12
    sget v2, Lcom/google/android/gms/ads/impl/R$string;->n:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_6b

    :cond_69
    const-string v1, "Decline"

    :goto_6b
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbpw;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzbpw;-><init>(Lcom/google/android/gms/internal/ads/zzbpx;)V

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 14
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
