###### Class com.google.android.gms.internal.measurement.zzbt (com.google.android.gms.internal.measurement.zzbt)
.class public final Lcom/google/android/gms/internal/measurement/zzbt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@20.1.2"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# static fields
.field private static final a:Ljava/lang/reflect/Method;

.field private static final b:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 1
    const-class v0, Ljava/lang/String;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/16 v4, 0x18

    const-string v5, "JobSchedulerCompat"

    const/4 v6, 0x0

    if-lt v1, v4, :cond_34

    const/4 v1, 0x4

    :try_start_e
    new-array v1, v1, [Ljava/lang/Class;

    const-class v7, Landroid/app/job/JobInfo;

    aput-object v7, v1, v3

    const/4 v7, 0x1

    aput-object v0, v1, v7

    const/4 v7, 0x2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v1, v7

    const/4 v7, 0x3

    aput-object v0, v1, v7

    const-class v0, Landroid/app/job/JobScheduler;

    const-string v7, "scheduleAsPackage"

    invoke-virtual {v0, v7, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_27
    .catch Ljava/lang/NoSuchMethodException; {:try_start_e .. :try_end_27} :catch_28

    goto :goto_35

    :catch_28
    nop

    .line 2
    invoke-static {v5, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "No scheduleAsPackage method available, falling back to schedule"

    .line 3
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    move-object v0, v6

    .line 4
    :goto_35
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbt;->a:Ljava/lang/reflect/Method;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_52

    :try_start_3b
    const-class v0, Landroid/os/UserHandle;

    const-string v1, "myUserId"

    new-array v3, v3, [Ljava/lang/Class;

    .line 5
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6
    :try_end_45
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3b .. :try_end_45} :catch_46

    goto :goto_52

    :catch_46
    nop

    .line 6
    invoke-static {v5, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_52

    const-string v0, "No myUserId method available"

    .line 7
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_52
    :goto_52
    sput-object v6, Lcom/google/android/gms/internal/measurement/zzbt;->b:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/app/job/JobInfo;Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    const-string p2, "jobscheduler"

    .line 1
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/job/JobScheduler;

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object p3, Lcom/google/android/gms/internal/measurement/zzbt;->a:Ljava/lang/reflect/Method;

    if-eqz p3, :cond_74

    const-string p3, "android.permission.UPDATE_DEVICE_STATS"

    .line 4
    invoke-virtual {p0, p3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_18

    goto :goto_74

    .line 5
    :cond_18
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzbt;->b:Ljava/lang/reflect/Method;

    const/4 p3, 0x0

    if-eqz p0, :cond_3f

    :try_start_1d
    const-class v0, Landroid/os/UserHandle;

    new-array v1, p3, [Ljava/lang/Object;

    .line 6
    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_3f

    .line 7
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_1d .. :try_end_2d} :catch_30
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1d .. :try_end_2d} :catch_2e

    goto :goto_40

    :catch_2e
    move-exception p0

    goto :goto_31

    :catch_30
    move-exception p0

    :goto_31
    const/4 v0, 0x6

    const-string v1, "JobSchedulerCompat"

    .line 8
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3f

    const-string v0, "myUserId invocation illegal"

    .line 9
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3f
    const/4 p0, 0x0

    .line 10
    :goto_40
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzbt;->a:Ljava/lang/reflect/Method;

    const-string v1, "com.google.android.gms"

    const-string v2, "UploadAlarm"

    if-eqz v0, :cond_6f

    const/4 v3, 0x4

    :try_start_49
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, p3

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v1, 0x2

    .line 11
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v1

    const/4 p0, 0x3

    aput-object v2, v3, p0

    invoke-virtual {v0, p2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_73

    .line 12
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p3
    :try_end_66
    .catch Ljava/lang/IllegalAccessException; {:try_start_49 .. :try_end_66} :catch_69
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_49 .. :try_end_66} :catch_67

    goto :goto_73

    :catch_67
    move-exception p0

    goto :goto_6a

    :catch_69
    move-exception p0

    :goto_6a
    const-string p3, "error calling scheduleAsPackage"

    .line 13
    invoke-static {v2, p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14
    :cond_6f
    invoke-virtual {p2, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p3

    :cond_73
    :goto_73
    return p3

    .line 15
    :cond_74
    :goto_74
    invoke-virtual {p2, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p0

    return p0
.end method
