###### Class com.facebook.appevents.internal.SessionLogger (com.facebook.appevents.internal.SessionLogger)
.class public final Lcom/facebook/appevents/internal/SessionLogger;
.super Ljava/lang/Object;
.source "SessionLogger.kt"


# static fields
.field private static final INACTIVE_SECONDS_QUANTA:[J

.field public static final INSTANCE:Lcom/facebook/appevents/internal/SessionLogger;

.field private static final PACKAGE_CHECKSUM:Ljava/lang/String; = "PCKGCHKSUM"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/appevents/internal/SessionLogger;

    invoke-direct {v0}, Lcom/facebook/appevents/internal/SessionLogger;-><init>()V

    sput-object v0, Lcom/facebook/appevents/internal/SessionLogger;->INSTANCE:Lcom/facebook/appevents/internal/SessionLogger;

    .line 1
    const-class v0, Lcom/facebook/appevents/internal/SessionLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/internal/SessionLogger;->TAG:Ljava/lang/String;

    const/16 v0, 0x13

    new-array v0, v0, [J

    .line 2
    fill-array-data v0, :array_1a

    .line 3
    sput-object v0, Lcom/facebook/appevents/internal/SessionLogger;->INACTIVE_SECONDS_QUANTA:[J

    return-void

    nop

    :array_1a
    .array-data 8
        0x493e0
        0xdbba0
        0x1b7740
        0x36ee80
        0x1499700
        0x2932e00
        0x5265c00
        0xa4cb800
        0xf731400
        0x240c8400
        0x48190800
        0x6c258c00
        0x90321000L
        0x134fd9000L
        0x1cf7c5800L
        0x269fb2000L
        0x30479e800L
        0x39ef8b000L
        0x757b12c00L
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final computePackageChecksum(Landroid/content/Context;)Ljava/lang/String;
    .registers 10

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 1
    :cond_8
    :try_start_8
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v4, "PCKGCHKSUM;"

    .line 3
    invoke-static {v4, v2}, Lt9/m;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.facebook.sdk.appEventPreferences"

    .line 4
    invoke-virtual {p1, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 5
    invoke-interface {v4, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_32

    .line 6
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_32

    return-object v5

    .line 7
    :cond_32
    sget-object v5, Lcom/facebook/appevents/internal/HashUtils;->INSTANCE:Lcom/facebook/appevents/internal/HashUtils;

    invoke-static {p1, v1}, Lcom/facebook/appevents/internal/HashUtils;->computeChecksumWithPackageManager(Landroid/content/Context;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3b

    goto :goto_4e

    .line 8
    :cond_3b
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    const-string v0, "pm.getApplicationInfo(context.packageName, 0)"

    invoke-static {p1, v0}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {p1}, Lcom/facebook/appevents/internal/HashUtils;->computeChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 10
    :goto_4e
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_59} :catch_5f
    .catchall {:try_start_8 .. :try_end_59} :catchall_5b

    move-object v1, v5

    goto :goto_5f

    :catchall_5b
    move-exception p1

    .line 11
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :catch_5f
    :goto_5f
    return-object v1
.end method

.method public static final getQuantaIndex(J)I
    .registers 8

    const-class v0, Lcom/facebook/appevents/internal/SessionLogger;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    return v2

    :cond_a
    const/4 v1, 0x0

    .line 1
    :goto_b
    :try_start_b
    sget-object v3, Lcom/facebook/appevents/internal/SessionLogger;->INACTIVE_SECONDS_QUANTA:[J

    array-length v4, v3

    if-ge v1, v4, :cond_19

    .line 2
    aget-wide v4, v3, v1
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_1a

    cmp-long v3, v4, p0

    if-gez v3, :cond_19

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_19
    return v1

    :catchall_1a
    move-exception p0

    .line 3
    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method

.method public static final logActivateApp(Ljava/lang/String;Lcom/facebook/appevents/internal/SourceApplicationInfo;Ljava/lang/String;Landroid/content/Context;)V
    .registers 7

    const-class v0, Lcom/facebook/appevents/internal/SessionLogger;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    :cond_9
    :try_start_9
    const-string v1, "activityName"

    invoke-static {p0, v1}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    invoke-static {p3, v1}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_58

    const-string v1, "Unclassified"

    if-nez p1, :cond_18

    goto :goto_20

    .line 1
    :cond_18
    :try_start_18
    invoke-virtual {p1}, Lcom/facebook/appevents/internal/SourceApplicationInfo;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1f

    goto :goto_20

    :cond_1f
    move-object v1, p1

    .line 2
    :goto_20
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "fb_mobile_launch_source"

    .line 3
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fb_mobile_pckg_fp"

    .line 4
    sget-object v2, Lcom/facebook/appevents/internal/SessionLogger;->INSTANCE:Lcom/facebook/appevents/internal/SessionLogger;

    invoke-direct {v2, p3}, Lcom/facebook/appevents/internal/SessionLogger;->computePackageChecksum(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fb_mobile_app_cert_hash"

    .line 6
    sget-object v2, Lcom/facebook/internal/security/CertificateUtil;->INSTANCE:Lcom/facebook/internal/security/CertificateUtil;

    invoke-static {p3}, Lcom/facebook/internal/security/CertificateUtil;->getCertificateHash(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object p3, Lcom/facebook/appevents/InternalAppEventsLogger;->Companion:Lcom/facebook/appevents/InternalAppEventsLogger$Companion;

    const/4 v1, 0x0

    invoke-virtual {p3, p0, p2, v1}, Lcom/facebook/appevents/InternalAppEventsLogger$Companion;->createInstance(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)Lcom/facebook/appevents/InternalAppEventsLogger;

    move-result-object p0

    const-string p2, "fb_mobile_activate_app"

    .line 8
    invoke-virtual {p0, p2, p1}, Lcom/facebook/appevents/InternalAppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 9
    invoke-virtual {p3}, Lcom/facebook/appevents/InternalAppEventsLogger$Companion;->getFlushBehavior()Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    move-result-object p1

    sget-object p2, Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;->EXPLICIT_ONLY:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    if-eq p1, p2, :cond_57

    .line 10
    invoke-virtual {p0}, Lcom/facebook/appevents/InternalAppEventsLogger;->flush()V
    :try_end_57
    .catchall {:try_start_18 .. :try_end_57} :catchall_58

    :cond_57
    return-void

    :catchall_58
    move-exception p0

    .line 11
    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private final logClockSkewEvent()V
    .registers 5

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1
    :cond_7
    :try_start_7
    sget-object v0, Lcom/facebook/internal/Logger;->Companion:Lcom/facebook/internal/Logger$Companion;

    sget-object v1, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    sget-object v2, Lcom/facebook/appevents/internal/SessionLogger;->TAG:Ljava/lang/String;

    invoke-static {v2}, Lt9/m;->b(Ljava/lang/Object;)V

    const-string v3, "Clock skew detected"

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/internal/Logger$Companion;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v0

    .line 2
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static final logDeactivateApp(Ljava/lang/String;Lcom/facebook/appevents/internal/SessionInfo;Ljava/lang/String;)V
    .registers 18

    move-object v0, p0

    const-class v1, Lcom/facebook/appevents/internal/SessionLogger;

    invoke-static {v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    return-void

    :cond_a
    :try_start_a
    const-string v2, "activityName"

    invoke-static {p0, v2}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_12

    return-void

    .line 1
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/appevents/internal/SessionInfo;->getDiskRestoreTime()Ljava/lang/Long;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_29

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/appevents/internal/SessionInfo;->getSessionLastEventTime()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_22

    move-wide v5, v3

    goto :goto_26

    :cond_22
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_26
    sub-long v5, v3, v5

    goto :goto_2d

    :cond_29
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_2d
    cmp-long v2, v5, v3

    if-gez v2, :cond_37

    .line 2
    sget-object v2, Lcom/facebook/appevents/internal/SessionLogger;->INSTANCE:Lcom/facebook/appevents/internal/SessionLogger;

    invoke-direct {v2}, Lcom/facebook/appevents/internal/SessionLogger;->logClockSkewEvent()V

    move-wide v5, v3

    .line 3
    :cond_37
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/appevents/internal/SessionInfo;->getSessionLength()J

    move-result-wide v7

    cmp-long v2, v7, v3

    if-gez v2, :cond_45

    .line 4
    sget-object v2, Lcom/facebook/appevents/internal/SessionLogger;->INSTANCE:Lcom/facebook/appevents/internal/SessionLogger;

    invoke-direct {v2}, Lcom/facebook/appevents/internal/SessionLogger;->logClockSkewEvent()V

    move-wide v7, v3

    .line 5
    :cond_45
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v9, "fb_mobile_app_interruptions"

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/appevents/internal/SessionInfo;->getInterruptionCount()I

    move-result v10

    .line 7
    invoke-virtual {v2, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v9, "fb_mobile_time_between_sessions"

    .line 8
    sget-object v10, Lt9/b0;->a:Lt9/b0;

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v11, "session_quanta_%d"

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v5, v6}, Lcom/facebook/appevents/internal/SessionLogger;->getQuantaIndex(J)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v13, v14

    invoke-static {v13, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v10, v11, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "java.lang.String.format(locale, format, *args)"

    invoke-static {v5, v6}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2, v9, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/appevents/internal/SessionInfo;->getSourceApplicationInfo()Lcom/facebook/appevents/internal/SourceApplicationInfo;

    move-result-object v5
    :try_end_7d
    .catchall {:try_start_a .. :try_end_7d} :catchall_bd

    const-string v6, "Unclassified"

    if-nez v5, :cond_82

    goto :goto_8a

    .line 11
    :cond_82
    :try_start_82
    invoke-virtual {v5}, Lcom/facebook/appevents/internal/SourceApplicationInfo;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_89

    goto :goto_8a

    :cond_89
    move-object v6, v5

    :goto_8a
    const-string v5, "fb_mobile_launch_source"

    .line 12
    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "_logTime"

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/appevents/internal/SessionInfo;->getSessionLastEventTime()Ljava/lang/Long;

    move-result-object v6

    if-nez v6, :cond_98

    goto :goto_9c

    :cond_98
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_9c
    const/16 v6, 0x3e8

    int-to-long v9, v6

    div-long/2addr v3, v9

    .line 14
    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 15
    sget-object v3, Lcom/facebook/appevents/InternalAppEventsLogger;->Companion:Lcom/facebook/appevents/InternalAppEventsLogger$Companion;

    const/4 v4, 0x0

    move-object/from16 v5, p2

    invoke-virtual {v3, p0, v5, v4}, Lcom/facebook/appevents/InternalAppEventsLogger$Companion;->createInstance(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)Lcom/facebook/appevents/InternalAppEventsLogger;

    move-result-object v0

    const-string v3, "fb_mobile_deactivate_app"
    :try_end_ae
    .catchall {:try_start_82 .. :try_end_ae} :catchall_bd

    long-to-double v4, v7

    const-wide/16 v6, 0x3e8

    long-to-double v6, v6

    .line 16
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    .line 17
    :try_start_b9
    invoke-virtual {v0, v3, v4, v5, v2}, Lcom/facebook/appevents/InternalAppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V
    :try_end_bc
    .catchall {:try_start_b9 .. :try_end_bc} :catchall_bd

    return-void

    :catchall_bd
    move-exception v0

    .line 18
    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
