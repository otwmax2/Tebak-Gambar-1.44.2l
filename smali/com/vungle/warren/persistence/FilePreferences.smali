###### Class com.vungle.warren.persistence.FilePreferences (com.vungle.warren.persistence.FilePreferences)
.class public Lcom/vungle/warren/persistence/FilePreferences;
.super Ljava/lang/Object;
.source "FilePreferences.java"


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/content/SharedPreferences;

.field private final e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/persistence/FilePreferences;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/vungle/warren/persistence/FilePreferences;->e:Ljava/util/HashSet;

    .line 4
    iput-object p2, p0, Lcom/vungle/warren/persistence/FilePreferences;->b:Ljava/util/concurrent/Executor;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object p2

    .line 6
    new-instance v1, Ljava/io/File;

    const-string v2, "vungle_settings"

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/vungle/warren/persistence/FilePreferences;->a:Ljava/io/File;

    .line 7
    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {p2, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-virtual {p2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p2

    if-nez p2, :cond_3c

    const-string p2, "FilePreferences"

    const-string v2, "Can\'t move old FilePreferences"

    .line 9
    invoke-static {p2, v2}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_3c
    invoke-static {v1}, Lcom/vungle/warren/utility/FileUtility;->readSerializable(Ljava/io/File;)Ljava/lang/Object;

    move-result-object p2

    .line 11
    instance-of v1, p2, Ljava/util/HashMap;

    if-eqz v1, :cond_49

    .line 12
    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    :cond_49
    const/4 p2, 0x0

    const-string v0, "com.vungle.sdk"

    .line 13
    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/warren/persistence/FilePreferences;->d:Landroid/content/SharedPreferences;

    .line 14
    invoke-direct {p0}, Lcom/vungle/warren/persistence/FilePreferences;->b()V

    return-void
.end method

.method static synthetic a(Lcom/vungle/warren/persistence/FilePreferences;)Ljava/io/File;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/persistence/FilePreferences;->a:Ljava/io/File;

    return-object p0
.end method

.method private b()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/persistence/FilePreferences;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 3
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_32

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/vungle/warren/persistence/FilePreferences;->put(Ljava/lang/String;Z)Lcom/vungle/warren/persistence/FilePreferences;

    goto :goto_e

    .line 5
    :cond_32
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_42

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/vungle/warren/persistence/FilePreferences;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/warren/persistence/FilePreferences;

    goto :goto_e

    .line 7
    :cond_42
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_56

    .line 8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/vungle/warren/persistence/FilePreferences;->put(Ljava/lang/String;I)Lcom/vungle/warren/persistence/FilePreferences;

    goto :goto_e

    .line 9
    :cond_56
    instance-of v3, v2, Ljava/util/HashSet;

    if-eqz v3, :cond_e

    .line 10
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {p0, v1, v2}, Lcom/vungle/warren/persistence/FilePreferences;->put(Ljava/lang/String;Ljava/util/HashSet;)Lcom/vungle/warren/persistence/FilePreferences;

    goto :goto_e

    .line 11
    :cond_66
    iget-object v0, p0, Lcom/vungle/warren/persistence/FilePreferences;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 12
    invoke-virtual {p0}, Lcom/vungle/warren/persistence/FilePreferences;->apply()V

    return-void
.end method


# virtual methods
.method public varargs addSharedPrefsKey([Ljava/lang/String;)Lcom/vungle/warren/persistence/FilePreferences;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/persistence/FilePreferences;->e:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public apply()V
    .registers 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/vungle/warren/persistence/FilePreferences;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 2
    iget-object v1, p0, Lcom/vungle/warren/persistence/FilePreferences;->b:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/vungle/warren/persistence/FilePreferences$1;

    invoke-direct {v2, p0, v0}, Lcom/vungle/warren/persistence/FilePreferences$1;-><init>(Lcom/vungle/warren/persistence/FilePreferences;Ljava/io/Serializable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/persistence/FilePreferences;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_10

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    :cond_10
    return p2
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/persistence/FilePreferences;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_10

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :cond_10
    return p2
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/persistence/FilePreferences;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_d

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    :cond_d
    return-object p2
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/HashSet;)Ljava/util/HashSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/persistence/FilePreferences;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Ljava/util/HashSet;

    if-eqz v0, :cond_10

    check-cast p1, Ljava/util/HashSet;

    invoke-static {p1}, Lcom/vungle/warren/utility/CollectionsConcurrencyUtil;->getNewHashSet(Ljava/util/HashSet;)Ljava/util/HashSet;

    move-result-object p2

    :cond_10
    return-object p2
.end method

.method public put(Ljava/lang/String;I)Lcom/vungle/warren/persistence/FilePreferences;
    .registers 5

    .line 7
    iget-object v0, p0, Lcom/vungle/warren/persistence/FilePreferences;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/vungle/warren/persistence/FilePreferences;->e:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 9
    iget-object v0, p0, Lcom/vungle/warren/persistence/FilePreferences;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1e
    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/warren/persistence/FilePreferences;
    .registers 4

    .line 4
    iget-object v0, p0, Lcom/vungle/warren/persistence/FilePreferences;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/vungle/warren/persistence/FilePreferences;->e:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 6
    iget-object v0, p0, Lcom/vungle/warren/persistence/FilePreferences;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1a
    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/util/HashSet;)Lcom/vungle/warren/persistence/FilePreferences;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/vungle/warren/persistence/FilePreferences;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/vungle/warren/persistence/FilePreferences;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Lcom/vungle/warren/utility/CollectionsConcurrencyUtil;->getNewHashSet(Ljava/util/HashSet;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lcom/vungle/warren/persistence/FilePreferences;->e:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 12
    iget-object v0, p0, Lcom/vungle/warren/persistence/FilePreferences;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p2}, Lcom/vungle/warren/utility/CollectionsConcurrencyUtil;->getNewHashSet(Ljava/util/HashSet;)Ljava/util/HashSet;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_22
    return-object p0
.end method

.method public put(Ljava/lang/String;Z)Lcom/vungle/warren/persistence/FilePreferences;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/persistence/FilePreferences;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/persistence/FilePreferences;->e:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/persistence/FilePreferences;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1e
    return-object p0
.end method

###### Class com.vungle.warren.persistence.FilePreferences.AnonymousClass1 (com.vungle.warren.persistence.FilePreferences$1)
.class Lcom/vungle/warren/persistence/FilePreferences$1;
.super Ljava/lang/Object;
.source "FilePreferences.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/persistence/FilePreferences;->apply()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Ljava/io/Serializable;

.field final synthetic p:Lcom/vungle/warren/persistence/FilePreferences;


# direct methods
.method constructor <init>(Lcom/vungle/warren/persistence/FilePreferences;Ljava/io/Serializable;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/persistence/FilePreferences$1;->p:Lcom/vungle/warren/persistence/FilePreferences;

    iput-object p2, p0, Lcom/vungle/warren/persistence/FilePreferences$1;->o:Ljava/io/Serializable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/persistence/FilePreferences$1;->p:Lcom/vungle/warren/persistence/FilePreferences;

    invoke-static {v0}, Lcom/vungle/warren/persistence/FilePreferences;->a(Lcom/vungle/warren/persistence/FilePreferences;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/persistence/FilePreferences$1;->o:Ljava/io/Serializable;

    invoke-static {v0, v1}, Lcom/vungle/warren/utility/FileUtility;->writeSerializable(Ljava/io/File;Ljava/io/Serializable;)V

    return-void
.end method
