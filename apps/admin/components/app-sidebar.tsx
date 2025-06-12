import * as React from 'react';
import { IconInnerShadowTop } from '@tabler/icons-react';

// import { NavDocuments } from '@/components/nav-documents';
import { NavMain } from '@/components/nav-main';
// import { NavSecondary } from '@/components/nav-secondary';
import { NavUser } from '@/components/nav-user';
import {
  Sidebar,
  SidebarContent,
  SidebarFooter,
  SidebarHeader,
  SidebarMenu,
  SidebarMenuButton,
  SidebarMenuItem,
} from '@/components/ui/sidebar';
import { sidebarLinks } from './dashboard/sidebarLinks';

export function AppSidebar({ ...props }: React.ComponentProps<typeof Sidebar>) {
  return (
    <Sidebar collapsible="offcanvas" {...props}>

      <SidebarHeader>
        <SidebarMenu>
          <SidebarMenuItem>
            <SidebarMenuButton
              asChild
              className="data-[slot=sidebar-menu-button]:!p-1.5"
            >
              <a href="#" className='flex gap-2'>
                <IconInnerShadowTop className="!size-5" />
                <span className="text-base font-semibold">Mobarter</span>
              </a>
            </SidebarMenuButton>
          </SidebarMenuItem>
        </SidebarMenu>
      </SidebarHeader>

      <SidebarContent>
        <NavMain items={sidebarLinks.navMain} />
        {/* <NavDocuments items={sidebarLinks.documents} /> */}
        {/* <NavSecondary items={sidebarLinks.navClouds} /> */}
        {/* <NavSecondary items={sidebarLinks.navSecondary} className="mt-auto" /> */}
      </SidebarContent>
      
      <SidebarFooter>
        <NavUser user={sidebarLinks.user} />
      </SidebarFooter>
    </Sidebar>
  );
}
