###### Class com.tebakgambar.database.TGDatabase (com.tebakgambar.database.TGDatabase)
.class public abstract Lcom/tebakgambar/database/TGDatabase;
.super Landroidx/room/h0;
.source "TGDatabase.java"


# static fields
.field private static o:Lcom/tebakgambar/database/TGDatabase;

.field private static final p:Ly0/b;

.field private static final q:Ly0/b;

.field private static final r:Ly0/b;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/tebakgambar/database/TGDatabase$a;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/tebakgambar/database/TGDatabase$a;-><init>(II)V

    sput-object v0, Lcom/tebakgambar/database/TGDatabase;->p:Ly0/b;

    .line 2
    new-instance v0, Lcom/tebakgambar/database/TGDatabase$b;

    const/4 v1, 0x3

    invoke-direct {v0, v2, v1}, Lcom/tebakgambar/database/TGDatabase$b;-><init>(II)V

    sput-object v0, Lcom/tebakgambar/database/TGDatabase;->q:Ly0/b;

    .line 3
    new-instance v0, Lcom/tebakgambar/database/TGDatabase$c;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/tebakgambar/database/TGDatabase$c;-><init>(II)V

    sput-object v0, Lcom/tebakgambar/database/TGDatabase;->r:Ly0/b;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/room/h0;-><init>()V

    return-void
.end method

.method public static C()Lcom/tebakgambar/database/TGDatabase;
    .registers 4

    .line 1
    sget-object v0, Lcom/tebakgambar/database/TGDatabase;->o:Lcom/tebakgambar/database/TGDatabase;

    if-nez v0, :cond_32

    .line 2
    invoke-static {}, Lcom/tebakgambar/TGApplication;->d()Lcom/tebakgambar/TGApplication;

    move-result-object v0

    const-class v1, Lcom/tebakgambar/database/TGDatabase;

    const-string v2, "tg-db"

    invoke-static {v0, v1, v2}, Landroidx/room/g0;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/h0$a;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroidx/room/h0$a;->c()Landroidx/room/h0$a;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ly0/b;

    const/4 v2, 0x0

    sget-object v3, Lcom/tebakgambar/database/TGDatabase;->p:Ly0/b;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/tebakgambar/database/TGDatabase;->q:Ly0/b;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/tebakgambar/database/TGDatabase;->r:Ly0/b;

    aput-object v3, v1, v2

    .line 4
    invoke-virtual {v0, v1}, Landroidx/room/h0$a;->b([Ly0/b;)Landroidx/room/h0$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/room/h0$a;->d()Landroidx/room/h0;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/database/TGDatabase;

    sput-object v0, Lcom/tebakgambar/database/TGDatabase;->o:Lcom/tebakgambar/database/TGDatabase;

    .line 6
    :cond_32
    sget-object v0, Lcom/tebakgambar/database/TGDatabase;->o:Lcom/tebakgambar/database/TGDatabase;

    return-object v0
.end method

.method public static D(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "tg.database.pref"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "tg-db-initialized"

    .line 2
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static F(Landroid/content/Context;)V
    .registers 3

    const-string v0, "tg.database.pref"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "tg-db-initialized"

    const/4 v1, 0x1

    .line 3
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 4
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public abstract E()Ln8/a;
.end method

###### Class com.tebakgambar.database.TGDatabase.a (com.tebakgambar.database.TGDatabase$a)
.class Lcom/tebakgambar/database/TGDatabase$a;
.super Ly0/b;
.source "TGDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/database/TGDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(II)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Ly0/b;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Lb1/g;)V
    .registers 3

    const-string v0, "ALTER TABLE Level ADD COLUMN comingSoon TEXT"

    .line 1
    invoke-interface {p1, v0}, Lb1/g;->execSQL(Ljava/lang/String;)V

    return-void
.end method

###### Class com.tebakgambar.database.TGDatabase.b (com.tebakgambar.database.TGDatabase$b)
.class Lcom/tebakgambar/database/TGDatabase$b;
.super Ly0/b;
.source "TGDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/database/TGDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(II)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Ly0/b;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Lb1/g;)V
    .registers 3

    const-string v0, "ALTER TABLE Level ADD COLUMN soalRecehIds TEXT"

    .line 1
    invoke-interface {p1, v0}, Lb1/g;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE Level ADD COLUMN sliderId INTEGER NOT NULL DEFAULT 0"

    .line 2
    invoke-interface {p1, v0}, Lb1/g;->execSQL(Ljava/lang/String;)V

    return-void
.end method

###### Class com.tebakgambar.database.TGDatabase.c (com.tebakgambar.database.TGDatabase$c)
.class Lcom/tebakgambar/database/TGDatabase$c;
.super Ly0/b;
.source "TGDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/database/TGDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(II)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Ly0/b;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Lb1/g;)V
    .registers 3

    const-string v0, "ALTER TABLE Level ADD COLUMN backgroundColor TEXT"

    .line 1
    invoke-interface {p1, v0}, Lb1/g;->execSQL(Ljava/lang/String;)V

    return-void
.end method
