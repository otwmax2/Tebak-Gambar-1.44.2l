###### Class com.facebook.appevents.AppEventDiskStore (com.facebook.appevents.AppEventDiskStore)
.class public final Lcom/facebook/appevents/AppEventDiskStore;
.super Ljava/lang/Object;
.source "AppEventDiskStore.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/AppEventDiskStore$MovedClassObjectInputStream;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/appevents/AppEventDiskStore;

.field private static final PERSISTED_EVENTS_FILENAME:Ljava/lang/String; = "AppEventsLogger.persistedevents"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/appevents/AppEventDiskStore;

    invoke-direct {v0}, Lcom/facebook/appevents/AppEventDiskStore;-><init>()V

    sput-object v0, Lcom/facebook/appevents/AppEventDiskStore;->INSTANCE:Lcom/facebook/appevents/AppEventDiskStore;

    .line 1
    const-class v0, Lcom/facebook/appevents/AppEventDiskStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/AppEventDiskStore;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final declared-synchronized readAndClearStore()Lcom/facebook/appevents/PersistedEvents;
    .registers 7

    const-class v0, Lcom/facebook/appevents/AppEventDiskStore;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lcom/facebook/appevents/internal/AppEventUtility;->INSTANCE:Lcom/facebook/appevents/internal/AppEventUtility;

    invoke-static {}, Lcom/facebook/appevents/internal/AppEventUtility;->assertIsNotMainThread()V

    .line 2
    sget-object v1, Lcom/facebook/FacebookSdk;->INSTANCE:Lcom/facebook/FacebookSdk;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_ac

    const/4 v2, 0x0

    :try_start_f
    const-string v3, "AppEventsLogger.persistedevents"

    .line 3
    invoke-virtual {v1, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    const-string v4, "context.openFileInput(PERSISTED_EVENTS_FILENAME)"

    invoke-static {v3, v4}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v4, Lcom/facebook/appevents/AppEventDiskStore$MovedClassObjectInputStream;

    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Lcom/facebook/appevents/AppEventDiskStore$MovedClassObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_24
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_24} :catch_8d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_24} :catch_53
    .catchall {:try_start_f .. :try_end_24} :catchall_4f

    .line 5
    :try_start_24
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_45

    check-cast v3, Lcom/facebook/appevents/PersistedEvents;
    :try_end_2c
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_2c} :catch_8e
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2c} :catch_4d
    .catchall {:try_start_24 .. :try_end_2c} :catchall_74

    .line 6
    :try_start_2c
    sget-object v2, Lcom/facebook/internal/Utility;->INSTANCE:Lcom/facebook/internal/Utility;

    invoke-static {v4}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_ac

    :try_start_31
    const-string v2, "AppEventsLogger.persistedevents"

    .line 7
    invoke-virtual {v1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3a} :catch_3b
    .catchall {:try_start_31 .. :try_end_3a} :catchall_ac

    goto :goto_43

    :catch_3b
    move-exception v1

    .line 8
    :try_start_3c
    sget-object v2, Lcom/facebook/appevents/AppEventDiskStore;->TAG:Ljava/lang/String;

    const-string v4, "Got unexpected exception when removing events file: "

    invoke-static {v2, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_ac

    :goto_43
    move-object v2, v3

    goto :goto_a3

    .line 9
    :cond_45
    :try_start_45
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v5, "null cannot be cast to non-null type com.facebook.appevents.PersistedEvents"

    invoke-direct {v3, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4d
    .catch Ljava/io/FileNotFoundException; {:try_start_45 .. :try_end_4d} :catch_8e
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4d} :catch_4d
    .catchall {:try_start_45 .. :try_end_4d} :catchall_74

    :catch_4d
    move-exception v3

    goto :goto_55

    :catchall_4f
    move-exception v3

    move-object v4, v2

    move-object v2, v3

    goto :goto_75

    :catch_53
    move-exception v3

    move-object v4, v2

    .line 10
    :goto_55
    :try_start_55
    sget-object v5, Lcom/facebook/appevents/AppEventDiskStore;->TAG:Ljava/lang/String;

    const-string v6, "Got unexpected exception while reading events: "

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5c
    .catchall {:try_start_55 .. :try_end_5c} :catchall_74

    .line 11
    :try_start_5c
    sget-object v3, Lcom/facebook/internal/Utility;->INSTANCE:Lcom/facebook/internal/Utility;

    invoke-static {v4}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_61
    .catchall {:try_start_5c .. :try_end_61} :catchall_ac

    :try_start_61
    const-string v3, "AppEventsLogger.persistedevents"

    .line 12
    invoke-virtual {v1, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_6a} :catch_6b
    .catchall {:try_start_61 .. :try_end_6a} :catchall_ac

    goto :goto_a3

    :catch_6b
    move-exception v1

    .line 13
    :try_start_6c
    sget-object v3, Lcom/facebook/appevents/AppEventDiskStore;->TAG:Ljava/lang/String;

    const-string v4, "Got unexpected exception when removing events file: "

    :goto_70
    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a3

    :catchall_74
    move-exception v2

    .line 14
    :goto_75
    sget-object v3, Lcom/facebook/internal/Utility;->INSTANCE:Lcom/facebook/internal/Utility;

    invoke-static {v4}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_7a
    .catchall {:try_start_6c .. :try_end_7a} :catchall_ac

    :try_start_7a
    const-string v3, "AppEventsLogger.persistedevents"

    .line 15
    invoke-virtual {v1, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_83} :catch_84
    .catchall {:try_start_7a .. :try_end_83} :catchall_ac

    goto :goto_8c

    :catch_84
    move-exception v1

    .line 16
    :try_start_85
    sget-object v3, Lcom/facebook/appevents/AppEventDiskStore;->TAG:Ljava/lang/String;

    const-string v4, "Got unexpected exception when removing events file: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8c
    throw v2

    :catch_8d
    move-object v4, v2

    .line 17
    :catch_8e
    sget-object v3, Lcom/facebook/internal/Utility;->INSTANCE:Lcom/facebook/internal/Utility;

    invoke-static {v4}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_93
    .catchall {:try_start_85 .. :try_end_93} :catchall_ac

    :try_start_93
    const-string v3, "AppEventsLogger.persistedevents"

    .line 18
    invoke-virtual {v1, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_9c} :catch_9d
    .catchall {:try_start_93 .. :try_end_9c} :catchall_ac

    goto :goto_a3

    :catch_9d
    move-exception v1

    .line 19
    :try_start_9e
    sget-object v3, Lcom/facebook/appevents/AppEventDiskStore;->TAG:Ljava/lang/String;

    const-string v4, "Got unexpected exception when removing events file: "

    goto :goto_70

    :goto_a3
    if-nez v2, :cond_aa

    .line 20
    new-instance v2, Lcom/facebook/appevents/PersistedEvents;

    invoke-direct {v2}, Lcom/facebook/appevents/PersistedEvents;-><init>()V
    :try_end_aa
    .catchall {:try_start_9e .. :try_end_aa} :catchall_ac

    .line 21
    :cond_aa
    monitor-exit v0

    return-object v2

    :catchall_ac
    move-exception v1

    monitor-exit v0

    goto :goto_b0

    :goto_af
    throw v1

    :goto_b0
    goto :goto_af
.end method

.method public static final saveEventsToDisk$facebook_core_release(Lcom/facebook/appevents/PersistedEvents;)V
    .registers 7

    const-string v0, "AppEventsLogger.persistedevents"

    .line 1
    sget-object v1, Lcom/facebook/FacebookSdk;->INSTANCE:Lcom/facebook/FacebookSdk;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    :try_start_9
    new-instance v3, Ljava/io/ObjectOutputStream;

    .line 3
    new-instance v4, Ljava/io/BufferedOutputStream;

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 4
    invoke-direct {v3, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_24

    .line 5
    :try_start_18
    invoke-virtual {v3, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_21

    .line 6
    sget-object p0, Lcom/facebook/internal/Utility;->INSTANCE:Lcom/facebook/internal/Utility;

    invoke-static {v3}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_38

    :catchall_21
    move-exception p0

    move-object v2, v3

    goto :goto_25

    :catchall_24
    move-exception p0

    .line 7
    :goto_25
    :try_start_25
    sget-object v3, Lcom/facebook/appevents/AppEventDiskStore;->TAG:Ljava/lang/String;

    const-string v4, "Got unexpected exception while persisting events: "

    invoke-static {v3, v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_39

    .line 8
    :try_start_2c
    invoke-virtual {v1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_33} :catch_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_39

    .line 9
    :catch_33
    sget-object p0, Lcom/facebook/internal/Utility;->INSTANCE:Lcom/facebook/internal/Utility;

    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    :goto_38
    return-void

    :catchall_39
    move-exception p0

    sget-object v0, Lcom/facebook/internal/Utility;->INSTANCE:Lcom/facebook/internal/Utility;

    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method

###### Class com.facebook.appevents.AppEventDiskStore.MovedClassObjectInputStream (com.facebook.appevents.AppEventDiskStore$MovedClassObjectInputStream)
.class final Lcom/facebook/appevents/AppEventDiskStore$MovedClassObjectInputStream;
.super Ljava/io/ObjectInputStream;
.source "AppEventDiskStore.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/AppEventDiskStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MovedClassObjectInputStream"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/AppEventDiskStore$MovedClassObjectInputStream$Companion;
    }
.end annotation


# static fields
.field private static final ACCESS_TOKEN_APP_ID_PAIR_SERIALIZATION_PROXY_V1_CLASS_NAME:Ljava/lang/String; = "com.facebook.appevents.AppEventsLogger$AccessTokenAppIdPair$SerializationProxyV1"

.field private static final APP_EVENT_SERIALIZATION_PROXY_V1_CLASS_NAME:Ljava/lang/String; = "com.facebook.appevents.AppEventsLogger$AppEvent$SerializationProxyV2"

.field public static final Companion:Lcom/facebook/appevents/AppEventDiskStore$MovedClassObjectInputStream$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/facebook/appevents/AppEventDiskStore$MovedClassObjectInputStream$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/appevents/AppEventDiskStore$MovedClassObjectInputStream$Companion;-><init>(Lt9/g;)V

    sput-object v0, Lcom/facebook/appevents/AppEventDiskStore$MovedClassObjectInputStream;->Companion:Lcom/facebook/appevents/AppEventDiskStore$MovedClassObjectInputStream$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method protected readClassDescriptor()Ljava/io/ObjectStreamClass;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/io/ObjectInputStream;->readClassDescriptor()Ljava/io/ObjectStreamClass;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.facebook.appevents.AppEventsLogger$AccessTokenAppIdPair$SerializationProxyV1"

    .line 3
    invoke-static {v1, v2}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 4
    const-class v0, Lcom/facebook/appevents/AccessTokenAppIdPair$SerializationProxyV1;

    invoke-static {v0}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v0

    goto :goto_29

    .line 5
    :cond_17
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.facebook.appevents.AppEventsLogger$AppEvent$SerializationProxyV2"

    invoke-static {v1, v2}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 6
    const-class v0, Lcom/facebook/appevents/AppEvent$SerializationProxyV2;

    invoke-static {v0}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v0

    :cond_29
    :goto_29
    const-string v1, "resultClassDescriptor"

    .line 7
    invoke-static {v0, v1}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

###### Class com.facebook.appevents.AppEventDiskStore.MovedClassObjectInputStream.Companion (com.facebook.appevents.AppEventDiskStore$MovedClassObjectInputStream$Companion)
.class public final Lcom/facebook/appevents/AppEventDiskStore$MovedClassObjectInputStream$Companion;
.super Ljava/lang/Object;
.source "AppEventDiskStore.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/AppEventDiskStore$MovedClassObjectInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lt9/g;)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/appevents/AppEventDiskStore$MovedClassObjectInputStream$Companion;-><init>()V

    return-void
.end method
