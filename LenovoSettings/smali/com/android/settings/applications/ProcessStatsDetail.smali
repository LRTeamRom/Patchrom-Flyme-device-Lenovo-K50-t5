.class public Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;
.super Landroid/app/Fragment;
.source "ProcessStatsDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final ACTION_FORCE_STOP:I = 0x1

.field public static final EXTRA_ENTRY:Ljava/lang/String; = "entry"

.field public static final EXTRA_MAX_WEIGHT:Ljava/lang/String; = "max_weight"

.field public static final EXTRA_TOTAL_TIME:Ljava/lang/String; = "total_time"

.field public static final EXTRA_USE_USS:Ljava/lang/String; = "use_uss"

.field private static final TAG:Ljava/lang/String; = "ProcessStatsDetail"

.field static final sServiceCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry$Service;",
            ">;"
        }
    .end annotation
.end field

.field static final sServicePkgCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry$Service;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private mDetailsParent:Landroid/view/ViewGroup;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mEntry:Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;

.field private mForceStopButton:Landroid/widget/Button;

.field private mMaxWeight:J

.field private mPm:Landroid/content/pm/PackageManager;

.field private mReportButton:Landroid/widget/Button;

.field private mRootView:Landroid/view/View;

.field private mServicesParent:Landroid/view/ViewGroup;

.field private mTitleView:Landroid/widget/TextView;

.field private mTotalTime:J

.field private mTwoButtonsPanel:Landroid/view/ViewGroup;

.field private mUseUss:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 210
    new-instance v0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail$1;

    invoke-direct {v0}, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail$1;-><init>()V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->sServiceCompare:Ljava/util/Comparator;

    .line 223
    new-instance v0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail$2;

    invoke-direct {v0}, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail$2;-><init>()V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->sServicePkgCompare:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 285
    new-instance v0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail$3;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail$3;-><init>(Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mForceStopButton:Landroid/widget/Button;

    return-object v0
.end method

.method private addDetailsItem(Landroid/view/ViewGroup;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 190
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f040071

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 192
    .local v1, "item":Landroid/view/ViewGroup;
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 193
    const v4, 0x7f0b00c8

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 194
    .local v2, "labelView":Landroid/widget/TextView;
    const v4, 0x7f0b00c9

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 195
    .local v3, "valueView":Landroid/widget/TextView;
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    return-void
.end method

.method private addPackageHeaderItem(Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 8
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 173
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f04009b

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 175
    .local v4, "item":Landroid/view/ViewGroup;
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 176
    const v6, 0x7f0b000e

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 177
    .local v2, "icon":Landroid/widget/ImageView;
    const v6, 0x7f0b0091

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 178
    .local v5, "nameView":Landroid/widget/TextView;
    const v6, 0x7f0b0092

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 180
    .local v1, "descriptionView":Landroid/widget/TextView;
    :try_start_0
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    invoke-virtual {v6, p2, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 181
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 182
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    return-void

    .line 183
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private checkForceStop()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 293
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mEntry:Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;->mUiPackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mEntry:Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;

    iget v0, v0, Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;->mUid:I

    const/16 v3, 0x2710

    if-ge v0, v3, :cond_1

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 315
    :goto_0
    return-void

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mEntry:Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;

    iget-object v3, v3, Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;->mUiPackage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 298
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 302
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mEntry:Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;

    iget-object v3, v3, Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;->mUiPackage:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 303
    .local v8, "info":Landroid/content/pm/ApplicationInfo;
    iget v0, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x200000

    and-int/2addr v0, v3

    if-nez v0, :cond_3

    .line 304
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mForceStopButton:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    .end local v8    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_3
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v3, "package"

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mEntry:Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;

    iget-object v4, v4, Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;->mUiPackage:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 310
    .local v1, "intent":Landroid/content/Intent;
    const-string v0, "android.intent.extra.PACKAGES"

    new-array v3, v6, [Ljava/lang/String;

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mEntry:Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;

    iget-object v4, v4, Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;->mUiPackage:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    const-string v0, "android.intent.extra.UID"

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mEntry:Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;

    iget v3, v3, Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;->mUid:I

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 312
    const-string v0, "android.intent.extra.user_handle"

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mEntry:Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;

    iget v3, v3, Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;->mUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 313
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 306
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private createDetails()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 117
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mEntry:Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;

    iget-wide v8, v8, Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;->mWeight:J

    long-to-double v8, v8

    iget-wide v10, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mMaxWeight:J

    long-to-double v10, v10

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double v4, v8, v10

    .line 119
    .local v4, "percentOfWeight":D
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v0, v8

    .line 120
    .local v0, "appLevel":I
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mEntry:Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;

    iget-wide v8, v8, Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;->mDuration:J

    iget-wide v10, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mTotalTime:J

    invoke-static {v8, v9, v10, v11}, Lcom/flyme/deviceoriginalsettings/Utils;->formatPercentage(JJ)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "appLevelText":Ljava/lang/String;
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    const v9, 0x1020010

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 124
    .local v6, "summary":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mEntry:Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;

    iget-object v8, v8, Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    const v9, 0x1020016

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mTitleView:Landroid/widget/TextView;

    .line 127
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mTitleView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mEntry:Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;

    iget-object v9, v9, Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;->mUiBaseLabel:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    const v9, 0x1020014

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 129
    .local v7, "text1":Landroid/widget/TextView;
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    const v9, 0x102000d

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 131
    .local v3, "progress":Landroid/widget/ProgressBar;
    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 132
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    const v9, 0x1020006

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 133
    .local v2, "icon":Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mEntry:Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;

    iget-object v8, v8, Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_0

    .line 134
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mEntry:Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;

    iget-object v8, v8, Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v9}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    :cond_0
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    const v9, 0x7f0b00cb

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mTwoButtonsPanel:Landroid/view/ViewGroup;

    .line 138
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    const v9, 0x7f0b0174

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mForceStopButton:Landroid/widget/Button;

    .line 139
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    const v9, 0x7f0b0173

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mReportButton:Landroid/widget/Button;

    .line 140
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v8, v12}, Landroid/widget/Button;->setEnabled(Z)V

    .line 141
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mReportButton:Landroid/widget/Button;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 143
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    const v9, 0x7f0b00cc

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mDetailsParent:Landroid/view/ViewGroup;

    .line 144
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    const v9, 0x7f0b00fd

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mServicesParent:Landroid/view/ViewGroup;

    .line 146
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->fillDetailsSection()V

    .line 147
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->fillServicesSection()V

    .line 149
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mEntry:Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;

    iget v8, v8, Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;->mUid:I

    const/16 v9, 0x2710

    if-lt v8, v9, :cond_1

    .line 150
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mForceStopButton:Landroid/widget/Button;

    const v9, 0x7f0c080b

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    .line 151
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mForceStopButton:Landroid/widget/Button;

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 152
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mTwoButtonsPanel:Landroid/view/ViewGroup;

    invoke-virtual {v8, v12}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_1
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mTwoButtonsPanel:Landroid/view/ViewGroup;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private doAction(I)V
    .locals 0
    .param p1, "action"    # I

    .prologue
    .line 164
    packed-switch p1, :pswitch_data_0

    .line 169
    :goto_0
    return-void

    .line 166
    :pswitch_0
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->killProcesses()V

    goto :goto_0

    .line 164
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private fillDetailsSection()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x400

    .line 200
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mDetailsParent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c09d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mUseUss:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mEntry:Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;

    iget-wide v0, v0, Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;->mAvgUss:J

    :goto_0
    mul-long/2addr v0, v6

    invoke-static {v4, v0, v1}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v3, v0}, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->addDetailsItem(Landroid/view/ViewGroup;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 203
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mDetailsParent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c09d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mUseUss:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mEntry:Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;

    iget-wide v0, v0, Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;->mMaxUss:J

    :goto_1
    mul-long/2addr v0, v6

    invoke-static {v4, v0, v1}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v3, v0}, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->addDetailsItem(Landroid/view/ViewGroup;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mDetailsParent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c09d7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mEntry:Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;

    iget-wide v2, v2, Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;->mDuration:J

    iget-wide v4, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mTotalTime:J

    invoke-static {v2, v3, v4, v5}, Lcom/flyme/deviceoriginalsettings/Utils;->formatPercentage(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->addDetailsItem(Landroid/view/ViewGroup;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 208
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mEntry:Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;

    iget-wide v0, v0, Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;->mAvgPss:J

    goto :goto_0

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mEntry:Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;

    iget-wide v0, v0, Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;->mMaxPss:J

    goto :goto_1
.end method

.method private fillServicesSection()V
    .locals 22

    .prologue
    .line 240
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mEntry:Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;

    iget-object v14, v14, Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-lez v14, :cond_6

    .line 241
    const/4 v2, 0x0

    .line 243
    .local v2, "addPackageSections":Z
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v11, "servicePkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry$Service;>;>;"
    const/4 v3, 0x0

    .local v3, "ip":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mEntry:Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;

    iget-object v14, v14, Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v3, v14, :cond_0

    .line 246
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mEntry:Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;

    iget-object v14, v14, Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v14, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 248
    .local v12, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry$Service;>;"
    sget-object v14, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->sServiceCompare:Ljava/util/Comparator;

    invoke-static {v12, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 249
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 251
    .end local v12    # "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry$Service;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mEntry:Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;

    iget-object v14, v14, Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    const/4 v15, 0x1

    if-gt v14, v15, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mEntry:Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;

    iget-object v14, v14, Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry$Service;

    iget-object v14, v14, Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry$Service;->mPackage:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mEntry:Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;

    iget-object v15, v15, Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 253
    :cond_1
    const/4 v2, 0x1

    .line 255
    sget-object v14, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->sServicePkgCompare:Ljava/util/Comparator;

    invoke-static {v11, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 257
    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v3, v14, :cond_6

    .line 258
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 259
    .restart local v12    # "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry$Service;>;"
    if-eqz v2, :cond_3

    .line 260
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mServicesParent:Landroid/view/ViewGroup;

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry$Service;

    iget-object v14, v14, Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry$Service;->mPackage:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v14}, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->addPackageHeaderItem(Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 262
    :cond_3
    const/4 v6, 0x0

    .local v6, "is":I
    :goto_2
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v6, v14, :cond_5

    .line 263
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry$Service;

    .line 264
    .local v10, "service":Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry$Service;
    iget-object v7, v10, Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry$Service;->mName:Ljava/lang/String;

    .line 265
    .local v7, "label":Ljava/lang/String;
    const/16 v14, 0x2e

    invoke-virtual {v7, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    .line 266
    .local v13, "tail":I
    if-ltz v13, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    if-ge v13, v14, :cond_4

    .line 267
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v7, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 269
    :cond_4
    iget-wide v4, v10, Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry$Service;->mDuration:J

    .line 270
    .local v4, "duration":J
    long-to-double v14, v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mTotalTime:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    mul-double v8, v14, v16

    .line 271
    .local v8, "percentOfTime":D
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mServicesParent:Landroid/view/ViewGroup;

    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0c0b67

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-virtual/range {v15 .. v17}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v7, v15}, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->addDetailsItem(Landroid/view/ViewGroup;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 262
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 257
    .end local v4    # "duration":J
    .end local v7    # "label":Ljava/lang/String;
    .end local v8    # "percentOfTime":D
    .end local v10    # "service":Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry$Service;
    .end local v13    # "tail":I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 276
    .end local v2    # "addPackageSections":Z
    .end local v3    # "ip":I
    .end local v6    # "is":I
    .end local v11    # "servicePkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry$Service;>;>;"
    .end local v12    # "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry$Service;>;"
    :cond_6
    return-void
.end method

.method private killProcesses()V
    .locals 3

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 281
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mEntry:Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;

    iget-object v1, v1, Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;->mUiPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 282
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->checkForceStop()V

    .line 283
    return-void
.end method

.method public static makePercentString(Landroid/content/res/Resources;JJ)Ljava/lang/String;
    .locals 9
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "amount"    # J
    .param p3, "total"    # J

    .prologue
    .line 77
    long-to-double v2, p1

    long-to-double v4, p3

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double v0, v2, v4

    .line 78
    .local v0, "percent":D
    const v2, 0x7f0c0b67

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 160
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->doAction(I)V

    .line 161
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    .line 85
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 86
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 87
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "entry"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mEntry:Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;

    .line 88
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mEntry:Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Lcom/flyme/deviceoriginalsettings/applications/ProcStatsEntry;->retrieveUiData(Landroid/content/pm/PackageManager;)V

    .line 89
    const-string v1, "use_uss"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mUseUss:Z

    .line 90
    const-string v1, "max_weight"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mMaxWeight:J

    .line 91
    const-string v1, "total_time"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mTotalTime:J

    .line 92
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 97
    const v1, 0x7f040096

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 98
    .local v0, "view":Landroid/view/View;
    invoke-static {p2, v0, v0, v2}, Lcom/flyme/deviceoriginalsettings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 100
    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    .line 101
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->createDetails()V

    .line 102
    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 113
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 114
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 107
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 108
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsDetail;->checkForceStop()V

    .line 109
    return-void
.end method
