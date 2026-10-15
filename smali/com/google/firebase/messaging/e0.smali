###### Class com.google.firebase.messaging.e0 (com.google.firebase.messaging.e0)
.class public Lcom/google/firebase/messaging/e0;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@22.0.0"


# direct methods
.method public static A(Landroid/content/Intent;)Z
    .registers 2

    if-eqz p0, :cond_12

    .line 1
    invoke-static {p0}, Lcom/google/firebase/messaging/e0;->r(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_12

    .line 2
    :cond_9
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/messaging/e0;->B(Landroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_12
    :goto_12
    const/4 p0, 0x0

    return p0
.end method

.method public static B(Landroid/os/Bundle;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    const-string v0, "google.c.a.e"

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static a()Z
    .registers 6

    const-string v0, "delivery_metrics_exported_to_big_query_enabled"

    const/4 v1, 0x0

    .line 1
    :try_start_3
    invoke-static {}, Lb5/g;->m()Lb5/g;
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_6} :catch_45

    .line 2
    invoke-static {}, Lb5/g;->m()Lb5/g;

    move-result-object v2

    invoke-virtual {v2}, Lb5/g;->l()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.google.firebase.messaging"

    .line 3
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "export_to_big_query"

    .line 4
    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 5
    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 6
    :cond_21
    :try_start_21
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz v3, :cond_44

    .line 7
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x80

    .line 8
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_44

    .line 9
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_44

    .line 10
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 11
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_43
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_21 .. :try_end_43} :catch_44

    return v0

    :catch_44
    :cond_44
    return v1

    :catch_45
    const-string v0, "FirebaseMessaging"

    const-string v2, "FirebaseApp has not being initialized. Device might be in direct boot mode. Skip exporting delivery metrics to Big Query"

    .line 12
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method static b(Ls6/a$b;Landroid/content/Intent;)Ls6/a;
    .registers 6

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_c

    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 2
    :cond_c
    invoke-static {}, Ls6/a;->p()Ls6/a$a;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lcom/google/firebase/messaging/e0;->p(Landroid/os/Bundle;)I

    move-result v1

    invoke-virtual {v0, v1}, Ls6/a$a;->m(I)Ls6/a$a;

    .line 4
    invoke-virtual {v0, p0}, Ls6/a$a;->e(Ls6/a$b;)Ls6/a$a;

    .line 5
    invoke-static {p1}, Lcom/google/firebase/messaging/e0;->f(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ls6/a$a;->f(Ljava/lang/String;)Ls6/a$a;

    .line 6
    invoke-static {}, Lcom/google/firebase/messaging/e0;->m()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ls6/a$a;->i(Ljava/lang/String;)Ls6/a$a;

    sget-object p0, Ls6/a$d;->q:Ls6/a$d;

    .line 7
    invoke-virtual {v0, p0}, Ls6/a$a;->k(Ls6/a$d;)Ls6/a$a;

    .line 8
    invoke-static {p1}, Lcom/google/firebase/messaging/e0;->k(Landroid/os/Bundle;)Ls6/a$c;

    move-result-object p0

    invoke-virtual {v0, p0}, Ls6/a$a;->h(Ls6/a$c;)Ls6/a$a;

    .line 9
    invoke-static {p1}, Lcom/google/firebase/messaging/e0;->h(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3d

    .line 10
    invoke-virtual {v0, p0}, Ls6/a$a;->g(Ljava/lang/String;)Ls6/a$a;

    .line 11
    :cond_3d
    invoke-static {p1}, Lcom/google/firebase/messaging/e0;->o(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_46

    .line 12
    invoke-virtual {v0, p0}, Ls6/a$a;->l(Ljava/lang/String;)Ls6/a$a;

    .line 13
    :cond_46
    invoke-static {p1}, Lcom/google/firebase/messaging/e0;->c(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4f

    .line 14
    invoke-virtual {v0, p0}, Ls6/a$a;->c(Ljava/lang/String;)Ls6/a$a;

    .line 15
    :cond_4f
    invoke-static {p1}, Lcom/google/firebase/messaging/e0;->i(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_58

    .line 16
    invoke-virtual {v0, p0}, Ls6/a$a;->b(Ljava/lang/String;)Ls6/a$a;

    .line 17
    :cond_58
    invoke-static {p1}, Lcom/google/firebase/messaging/e0;->e(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_61

    .line 18
    invoke-virtual {v0, p0}, Ls6/a$a;->d(Ljava/lang/String;)Ls6/a$a;

    .line 19
    :cond_61
    invoke-static {p1}, Lcom/google/firebase/messaging/e0;->n(Landroid/os/Bundle;)J

    move-result-wide p0

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-lez v3, :cond_6e

    .line 20
    invoke-virtual {v0, p0, p1}, Ls6/a$a;->j(J)Ls6/a$a;

    .line 21
    :cond_6e
    invoke-virtual {v0}, Ls6/a$a;->a()Ls6/a;

    move-result-object p0

    return-object p0
.end method

.method static c(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 2

    const-string v0, "collapse_key"

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static d(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 2

    const-string v0, "google.c.a.c_id"

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static e(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 2

    const-string v0, "google.c.a.c_l"

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static f(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 2

    const-string v0, "google.to"

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    return-object p0

    .line 3
    :cond_d
    :try_start_d
    invoke-static {}, Lb5/g;->m()Lb5/g;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/installations/c;->r(Lb5/g;)Lcom/google/firebase/installations/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/installations/c;->a()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->a(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_1f
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_d .. :try_end_1f} :catch_22
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_1f} :catch_20

    return-object p0

    :catch_20
    move-exception p0

    goto :goto_23

    :catch_22
    move-exception p0

    :goto_23
    new-instance v0, Ljava/lang/RuntimeException;

    .line 4
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static g(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 2

    const-string v0, "google.c.a.m_c"

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static h(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 2

    const-string v0, "google.message_id"

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    const-string v0, "message_id"

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    return-object v0
.end method

.method static i(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 2

    const-string v0, "google.c.a.m_l"

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static j(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 2

    const-string v0, "google.c.a.ts"

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static k(Landroid/os/Bundle;)Ls6/a$c;
    .registers 1

    if-eqz p0, :cond_b

    .line 1
    invoke-static {p0}, Lcom/google/firebase/messaging/g0;->t(Landroid/os/Bundle;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 2
    sget-object p0, Ls6/a$c;->s:Ls6/a$c;

    goto :goto_d

    .line 3
    :cond_b
    sget-object p0, Ls6/a$c;->q:Ls6/a$c;

    :goto_d
    return-object p0
.end method

.method static l(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/firebase/messaging/g0;->t(Landroid/os/Bundle;)Z

    move-result p0

    const/4 v0, 0x1

    if-eq v0, p0, :cond_a

    const-string p0, "data"

    return-object p0

    :cond_a
    const-string p0, "display"

    return-object p0
.end method

.method static m()Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {}, Lb5/g;->m()Lb5/g;

    move-result-object v0

    invoke-virtual {v0}, Lb5/g;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static n(Landroid/os/Bundle;)J
    .registers 7

    const-string v0, "google.c.sender.id"

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "FirebaseMessaging"

    if-eqz v1, :cond_19

    .line 2
    :try_start_a
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_12} :catch_13

    return-wide v0

    :catch_13
    move-exception p0

    const-string v0, "error parsing project number"

    .line 3
    invoke-static {v2, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    :cond_19
    invoke-static {}, Lb5/g;->m()Lb5/g;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lb5/g;->p()Lb5/q;

    move-result-object v0

    invoke-virtual {v0}, Lb5/q;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 6
    :try_start_27
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_2b} :catch_2c

    return-wide v0

    :catch_2c
    move-exception v0

    const-string v1, "error parsing sender ID"

    .line 7
    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8
    :cond_32
    invoke-virtual {p0}, Lb5/g;->p()Lb5/q;

    move-result-object p0

    invoke-virtual {p0}, Lb5/q;->c()Ljava/lang/String;

    move-result-object p0

    const-string v0, "1:"

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "error parsing app ID"

    const-wide/16 v3, 0x0

    if-nez v0, :cond_50

    .line 10
    :try_start_46
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_4a
    .catch Ljava/lang/NumberFormatException; {:try_start_46 .. :try_end_4a} :catch_4b

    return-wide v0

    :catch_4b
    move-exception p0

    .line 11
    invoke-static {v2, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6e

    :cond_50
    const-string v0, ":"

    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 13
    array-length v0, p0

    const/4 v5, 0x2

    if-ge v0, v5, :cond_5b

    return-wide v3

    :cond_5b
    const/4 v0, 0x1

    .line 14
    aget-object p0, p0, v0

    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_65

    return-wide v3

    .line 16
    :cond_65
    :try_start_65
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_69
    .catch Ljava/lang/NumberFormatException; {:try_start_65 .. :try_end_69} :catch_6a

    return-wide v0

    :catch_6a
    move-exception p0

    .line 17
    invoke-static {v2, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6e
    return-wide v3
.end method

.method static o(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 2

    const-string v0, "from"

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_11

    const-string v0, "/topics/"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method static p(Landroid/os/Bundle;)I
    .registers 3

    const-string v0, "google.ttl"

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 2
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_11

    .line 3
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 4
    :cond_11
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_3d

    .line 5
    :try_start_15
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_1c} :catch_1d

    return p0

    .line 6
    :catch_1d
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0xd

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid TTL: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FirebaseMessaging"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    const/4 p0, 0x0

    return p0
.end method

.method static q(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 3

    const-string v0, "google.c.a.udt"

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method private static r(Landroid/content/Intent;)Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.google.firebase.messaging.RECEIVE_DIRECT_BOOT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static s(Landroid/content/Intent;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "_nd"

    invoke-static {v0, p0}, Lcom/google/firebase/messaging/e0;->x(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static t(Landroid/content/Intent;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "_nf"

    invoke-static {v0, p0}, Lcom/google/firebase/messaging/e0;->x(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static u(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/firebase/messaging/e0;->y(Landroid/os/Bundle;)V

    const-string v0, "_no"

    .line 2
    invoke-static {v0, p0}, Lcom/google/firebase/messaging/e0;->x(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static v(Landroid/content/Intent;)V
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/google/firebase/messaging/e0;->A(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "_nr"

    invoke-static {v1, v0}, Lcom/google/firebase/messaging/e0;->x(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3
    :cond_f
    invoke-static {p0}, Lcom/google/firebase/messaging/e0;->z(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 4
    sget-object v0, Ls6/a$b;->q:Ls6/a$b;

    .line 5
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->h()Lj3/g;

    move-result-object v1

    .line 6
    invoke-static {v0, p0, v1}, Lcom/google/firebase/messaging/e0;->w(Ls6/a$b;Landroid/content/Intent;Lj3/g;)V

    :cond_1e
    return-void
.end method

.method private static w(Ls6/a$b;Landroid/content/Intent;Lj3/g;)V
    .registers 7

    const-string v0, "FirebaseMessaging"

    if-nez p2, :cond_a

    const-string p0, "TransportFactory is null. Skip exporting message delivery metrics to Big Query"

    .line 1
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2
    :cond_a
    invoke-static {p0, p1}, Lcom/google/firebase/messaging/e0;->b(Ls6/a$b;Landroid/content/Intent;)Ls6/a;

    move-result-object p0

    if-nez p0, :cond_11

    return-void

    :cond_11
    :try_start_11
    const-string p1, "FCM_CLIENT_EVENT_LOGGING"

    const-class v1, Ls6/b;

    const-string v2, "proto"

    .line 3
    invoke-static {v2}, Lj3/b;->b(Ljava/lang/String;)Lj3/b;

    move-result-object v2

    sget-object v3, Lcom/google/firebase/messaging/d0;->a:Lj3/e;

    .line 4
    invoke-interface {p2, p1, v1, v2, v3}, Lj3/g;->a(Ljava/lang/String;Ljava/lang/Class;Lj3/b;Lj3/e;)Lj3/f;

    move-result-object p1

    invoke-static {}, Ls6/b;->b()Ls6/b$a;

    move-result-object p2

    .line 5
    invoke-virtual {p2, p0}, Ls6/b$a;->b(Ls6/a;)Ls6/b$a;

    invoke-virtual {p2}, Ls6/b$a;->a()Ls6/b;

    move-result-object p0

    .line 6
    invoke-static {p0}, Lj3/c;->e(Ljava/lang/Object;)Lj3/c;

    move-result-object p0

    .line 7
    invoke-interface {p1, p0}, Lj3/f;->b(Lj3/c;)V
    :try_end_33
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_33} :catch_34

    return-void

    :catch_34
    move-exception p0

    const-string p1, "Failed to send big query analytics payload."

    .line 8
    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method static x(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7

    if-nez p1, :cond_7

    new-instance p1, Landroid/os/Bundle;

    .line 1
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_7
    new-instance v0, Landroid/os/Bundle;

    .line 2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/firebase/messaging/e0;->d(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_17

    const-string v2, "_nmid"

    .line 4
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_17
    invoke-static {p1}, Lcom/google/firebase/messaging/e0;->e(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_22

    const-string v2, "_nmn"

    .line 6
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_22
    invoke-static {p1}, Lcom/google/firebase/messaging/e0;->i(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_31

    const-string v2, "label"

    .line 9
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_31
    invoke-static {p1}, Lcom/google/firebase/messaging/e0;->g(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_40

    const-string v2, "message_channel"

    .line 12
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_40
    invoke-static {p1}, Lcom/google/firebase/messaging/e0;->o(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4b

    const-string v2, "_nt"

    .line 14
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_4b
    invoke-static {p1}, Lcom/google/firebase/messaging/e0;->j(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FirebaseMessaging"

    if-eqz v1, :cond_63

    :try_start_53
    const-string v3, "_nmt"

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_5c
    .catch Ljava/lang/NumberFormatException; {:try_start_53 .. :try_end_5c} :catch_5d

    goto :goto_63

    :catch_5d
    move-exception v1

    const-string v3, "Error while parsing timestamp in GCM event"

    .line 17
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    :cond_63
    :goto_63
    invoke-static {p1}, Lcom/google/firebase/messaging/e0;->q(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_79

    :try_start_69
    const-string v3, "_ndt"

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 20
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_72
    .catch Ljava/lang/NumberFormatException; {:try_start_69 .. :try_end_72} :catch_73

    goto :goto_79

    :catch_73
    move-exception v1

    const-string v3, "Error while parsing use_device_time in GCM event"

    .line 21
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    :cond_79
    :goto_79
    invoke-static {p1}, Lcom/google/firebase/messaging/e0;->l(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "_nr"

    .line 23
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8d

    const-string v1, "_nf"

    .line 24
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_92

    :cond_8d
    const-string v1, "_nmc"

    .line 25
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_92
    const/4 p1, 0x3

    .line 26
    invoke-static {v2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_c4

    .line 27
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x25

    add-int/2addr v1, v3

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Logging to scion event="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " scionPayload="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_c4
    invoke-static {}, Lb5/g;->m()Lb5/g;

    move-result-object p1

    const-class v1, Le5/a;

    invoke-virtual {p1, v1}, Lb5/g;->j(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le5/a;

    if-eqz p1, :cond_d8

    const-string v1, "fcm"

    .line 29
    invoke-interface {p1, v1, p0, v0}, Le5/a;->c(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_d8
    const-string p0, "Unable to log event: analytics library is missing"

    .line 30
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static y(Landroid/os/Bundle;)V
    .registers 6

    if-nez p0, :cond_3

    return-void

    :cond_3
    const-string v0, "google.c.a.tc"

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    const-string v2, "FirebaseMessaging"

    if-eqz v0, :cond_5e

    .line 3
    invoke-static {}, Lb5/g;->m()Lb5/g;

    move-result-object v0

    const-class v3, Le5/a;

    invoke-virtual {v0, v3}, Lb5/g;->j(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le5/a;

    .line 4
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2b

    const-string v1, "Received event with track-conversion=true. Setting user property and reengagement event"

    .line 5
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    if-eqz v0, :cond_58

    const-string v1, "google.c.a.c_id"

    .line 6
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "fcm"

    const-string v2, "_ln"

    .line 7
    invoke-interface {v0, v1, v2, p0}, Le5/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Landroid/os/Bundle;

    .line 8
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "source"

    const-string v4, "Firebase"

    .line 9
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "medium"

    const-string v4, "notification"

    .line 10
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "campaign"

    .line 11
    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "_cmp"

    .line 12
    invoke-interface {v0, v1, p0, v2}, Le5/a;->c(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_58
    const-string p0, "Unable to set user property for conversion tracking:  analytics library is missing"

    .line 13
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 14
    :cond_5e
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_69

    const-string p0, "Received event with track-conversion=false. Do not set user property"

    .line 15
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_69
    return-void
.end method

.method public static z(Landroid/content/Intent;)Z
    .registers 1

    if-eqz p0, :cond_e

    .line 1
    invoke-static {p0}, Lcom/google/firebase/messaging/e0;->r(Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_e

    .line 2
    :cond_9
    invoke-static {}, Lcom/google/firebase/messaging/e0;->a()Z

    move-result p0

    return p0

    :cond_e
    :goto_e
    const/4 p0, 0x0

    return p0
.end method
