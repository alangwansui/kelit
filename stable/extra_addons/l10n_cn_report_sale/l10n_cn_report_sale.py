# -*- coding: utf-8 -*-
##############################################################################
#
#    OpenERP, Open Source Management Solution
#    Copyright (c) 2010-2013 Elico Corp. All Rights Reserved.
#    Author: Jon.Chow <jon.chow@elico-corp.com>
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU Affero General Public License as
#    published by the Free Software Foundation, either version 3 of the
#    License, or (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU Affero General Public License for more details.
#
#    You should have received a copy of the GNU Affero General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
##############################################################################

from openerp.osv import osv, fields
from openerp.tools.translate import _
import re

class sale_order(osv.osv):
    _inherit='sale.order'
    
    # Jon print button print_quotation  print the  l10n.cn.order report 
    def print_quotation(self, cr, uid, ids, context=None):
        result= super(sale_order,self).print_quotation(cr,uid,ids,context=context)
        return  {'type': 'ir.actions.report.xml', 'report_name': 'l10n.cn.order', 'datas': result['datas'], 'nodestroy': True} 

sale_order()




# vim:expandtab:smartindent:tabstop=4:softtabstop=4:shiftwidth=4:
