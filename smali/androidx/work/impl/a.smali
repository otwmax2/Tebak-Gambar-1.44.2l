###### Class androidx.work.impl.a (androidx.work.impl.a)
.class public Landroidx/work/impl/a;
.super Ljava/lang/Object;
.source "WorkDatabaseMigrations.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/a$i;,
        Landroidx/work/impl/a$h;
    }
.end annotation


# static fields
.field public static a:Ly0/b;

.field public static b:Ly0/b;

.field public static c:Ly0/b;

.field public static d:Ly0/b;

.field public static e:Ly0/b;

.field public static f:Ly0/b;

.field public static g:Ly0/b;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Landroidx/work/impl/a$a;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/work/impl/a$a;-><init>(II)V

    sput-object v0, Landroidx/work/impl/a;->a:Ly0/b;

    .line 2
    new-instance v0, Landroidx/work/impl/a$b;

    const/4 v1, 0x3

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroidx/work/impl/a$b;-><init>(II)V

    sput-object v0, Landroidx/work/impl/a;->b:Ly0/b;

    .line 3
    new-instance v0, Landroidx/work/impl/a$c;

    const/4 v1, 0x5

    invoke-direct {v0, v2, v1}, Landroidx/work/impl/a$c;-><init>(II)V

    sput-object v0, Landroidx/work/impl/a;->c:Ly0/b;

    .line 4
    new-instance v0, Landroidx/work/impl/a$d;

    const/4 v1, 0x6

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroidx/work/impl/a$d;-><init>(II)V

    sput-object v0, Landroidx/work/impl/a;->d:Ly0/b;

    .line 5
    new-instance v0, Landroidx/work/impl/a$e;

    const/16 v1, 0x8

    invoke-direct {v0, v2, v1}, Landroidx/work/impl/a$e;-><init>(II)V

    sput-object v0, Landroidx/work/impl/a;->e:Ly0/b;

    .line 6
    new-instance v0, Landroidx/work/impl/a$f;

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroidx/work/impl/a$f;-><init>(II)V

    sput-object v0, Landroidx/work/impl/a;->f:Ly0/b;

    .line 7
    new-instance v0, Landroidx/work/impl/a$g;

    const/16 v1, 0xb

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Landroidx/work/impl/a$g;-><init>(II)V

    sput-object v0, Landroidx/work/impl/a;->g:Ly0/b;

    return-void
.end method

###### Class androidx.work.impl.a.C0073a (androidx.work.impl.a$a)
.class Landroidx/work/impl/a$a;
.super Ly0/b;
.source "WorkDatabaseMigrations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/a;
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

    const-string v0, "CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    .line 1
    invoke-interface {p1, v0}, Lb1/g;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT INTO SystemIdInfo(work_spec_id, system_id) SELECT work_spec_id, alarm_id AS system_id FROM alarmInfo"

    .line 2
    invoke-interface {p1, v0}, Lb1/g;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS alarmInfo"

    .line 3
    invoke-interface {p1, v0}, Lb1/g;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT OR IGNORE INTO worktag(tag, work_spec_id) SELECT worker_class_name AS tag, id AS work_spec_id FROM workspec"

    .line 4
    invoke-interface {p1, v0}, Lb1/g;->execSQL(Ljava/lang/String;)V

    return-void
.end method

###### Class androidx.work.impl.a.b (androidx.work.impl.a$b)
.class Landroidx/work/impl/a$b;
.super Ly0/b;
.source "WorkDatabaseMigrations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/a;
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
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    const-string v0, "UPDATE workspec SET schedule_requested_at=0 WHERE state NOT IN (2, 3, 5) AND schedule_requested_at=-1 AND interval_duration<>0"

    .line 2
    invoke-interface {p1, v0}, Lb1/g;->execSQL(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

###### Class androidx.work.impl.a.c (androidx.work.impl.a$c)
.class Landroidx/work/impl/a$c;
.super Ly0/b;
.source "WorkDatabaseMigrations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/a;
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

    const-string v0, "ALTER TABLE workspec ADD COLUMN `trigger_content_update_delay` INTEGER NOT NULL DEFAULT -1"

    .line 1
    invoke-interface {p1, v0}, Lb1/g;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE workspec ADD COLUMN `trigger_max_content_delay` INTEGER NOT NULL DEFAULT -1"

    .line 2
    invoke-interface {p1, v0}, Lb1/g;->execSQL(Ljava/lang/String;)V

    return-void
.end method

###### Class androidx.work.impl.a.d (androidx.work.impl.a$d)
.class Landroidx/work/impl/a$d;
.super Ly0/b;
.source "WorkDatabaseMigrations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/a;
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

    const-string v0, "CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    .line 1
    invoke-interface {p1, v0}, Lb1/g;->execSQL(Ljava/lang/String;)V

    return-void
.end method

###### Class androidx.work.impl.a.e (androidx.work.impl.a$e)
.class Landroidx/work/impl/a$e;
.super Ly0/b;
.source "WorkDatabaseMigrations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/a;
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

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_period_start_time` ON `workspec` (`period_start_time`)"

    .line 1
    invoke-interface {p1, v0}, Lb1/g;->execSQL(Ljava/lang/String;)V

    return-void
.end method

###### Class androidx.work.impl.a.f (androidx.work.impl.a$f)
.class Landroidx/work/impl/a$f;
.super Ly0/b;
.source "WorkDatabaseMigrations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/a;
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

    const-string v0, "ALTER TABLE workspec ADD COLUMN `run_in_foreground` INTEGER NOT NULL DEFAULT 0"

    .line 1
    invoke-interface {p1, v0}, Lb1/g;->execSQL(Ljava/lang/String;)V

    return-void
.end method

###### Class androidx.work.impl.a.g (androidx.work.impl.a$g)
.class Landroidx/work/impl/a$g;
.super Ly0/b;
.source "WorkDatabaseMigrations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/a;
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

    const-string v0, "ALTER TABLE workspec ADD COLUMN `out_of_quota_policy` INTEGER NOT NULL DEFAULT 0"

    .line 1
    invoke-interface {p1, v0}, Lb1/g;->execSQL(Ljava/lang/String;)V

    return-void
.end method

###### Class androidx.work.impl.a.h (androidx.work.impl.a$h)
.class public Landroidx/work/impl/a$h;
.super Ly0/b;
.source "WorkDatabaseMigrations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 4

    .line 1
    invoke-direct {p0, p2, p3}, Ly0/b;-><init>(II)V

    .line 2
    iput-object p1, p0, Landroidx/work/impl/a$h;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lb1/g;)V
    .registers 7

    .line 1
    iget v0, p0, Ly0/b;->b:I

    const-string v1, "reschedule_needed"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xa

    if-lt v0, v4, :cond_1b

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v2

    .line 2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)"

    invoke-interface {p1, v1, v0}, Lb1/g;->x1(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2e

    .line 3
    :cond_1b
    iget-object p1, p0, Landroidx/work/impl/a$h;->c:Landroid/content/Context;

    const-string v0, "androidx.work.util.preferences"

    .line 4
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 6
    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_2e
    return-void
.end method

###### Class androidx.work.impl.a.i (androidx.work.impl.a$i)
.class public Landroidx/work/impl/a$i;
.super Ly0/b;
.source "WorkDatabaseMigrations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# instance fields
.field final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/16 v0, 0x9

    const/16 v1, 0xa

    .line 1
    invoke-direct {p0, v0, v1}, Ly0/b;-><init>(II)V

    .line 2
    iput-object p1, p0, Landroidx/work/impl/a$i;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lb1/g;)V
    .registers 3

    const-string v0, "CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))"

    .line 1
    invoke-interface {p1, v0}, Lb1/g;->execSQL(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroidx/work/impl/a$i;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lr1/e;->b(Landroid/content/Context;Lb1/g;)V

    .line 3
    iget-object v0, p0, Landroidx/work/impl/a$i;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lr1/c;->a(Landroid/content/Context;Lb1/g;)V

    return-void
.end method
